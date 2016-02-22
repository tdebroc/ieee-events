app.factory('webService', ['$http', '$cacheFactory', 'utilService', 'appConstant',
  function($http, $cacheFactory, utilService, appConstant) {
 return {
 /**
      * Generic Function to call webservice.
      * @param {String} url
      * @param {JSON} options
      * @param {Function} callbackSucess
      */
   callWebService : function(url, options, callbackSucess, callbackFailure) {
     var options = options || {};
     var req = {
         url : url,
         method : options.method || 'GET',
         headers : options.headers,
         data : options.data || {},
     };
     $http(req)
         .success(function(data, status, headers, config) {
           if (data.error) {
             console.error("Functional Error with webservice " + url +
                 ". Error is : " + JSON.stringify(data.error));
             if (callbackFailure) {
               callbackFailure(data);
             }
             return;
           }
           callbackSucess(data, status, headers, config);
         }).error(function(data, status, headers, config) {
           console.error("Technical Error with webservice " + url + "." +
              "Error is "+ JSON.stringify(data));
           if (data.error == "user is not Authentified") {
             location.reload();
           }
           if (callbackFailure) {
             callbackFailure(data);
           }
         });
   },
   //=========================================================================
   //= User Web Services.
   //=========================================================================
   /**
    * @param {String} mail
    * @param {String} password
    * @param {Function} callback
    */
   login : function(mail, password, callbackSucess, callbackFailure) {
     var url = "/login?mail=" + mail
         + "&password=" + password;
     this.callWebService(url, {}, callbackSucess, callbackFailure);
   },
   /**
    * @param {Function} callback
    */
   getCurrentUser : function(callbackSuccess, callbackFail) {
     var url = "/getCurrentUser";
     var $httpDefaultCache = $cacheFactory.get('$http');
     $httpDefaultCache.remove(url);
     this.callWebService(url, {cache: false}, callbackSuccess);
   },
   /**
    * @param {Function} callback
    */
   getProfile : function(idUser, callbackSuccess) {
     var url = "/getProfile/" + (idUser ? idUser : "");
     this.callWebService(url, {}, callbackSuccess);
   },
   //=========================================================================
   //= Courses Web Services.
   //=========================================================================
   /**
    * @param {Function} callback
    */
   getCourses : function(callback) {
     var url = "/getCourses";
     this.callWebService(url, {}, callback);
   },
   //=========================================================================
   //= Lessons Web Services.
   //=========================================================================
   /**
    * @param {Int} idCourse
    * @param {Function} callback
    */
   getLessons : function(idCourse, callbackSuccess) {
     var url = "/getLessons?idCourse=" + idCourse;
     this.callWebService(url, {}, callbackSuccess);
   },
   /**
    * @param {Number} idLesson
    * @param {Function} callback
    */
   getLessonItems : function(idLesson, callbackSuccess) {
     var url = "/getLessonItems?idLesson=" + idLesson;
     this.callWebService(url, {}, callbackSuccess);
   },
   /**
    * @param {String} answer
    * @param {Function} callbackSuccess
    * @param {Function} callbackFailure
    */
   sendAnswer : function(idLessonItem, answer, options, callbackSuccess, callbackFailure) {
     var url = "/sendAnswer?idLessonItem=" + idLessonItem;
     this.callWebService(url, {
             method : "POST",
             data : {answer : answer, options : options}
         }, callbackSuccess, callbackFailure);
   },
   /**
    * @param {Number} idLesson
    * @param {Number} idUserGroup
    * @param {Function} callbackSuccess
    */
   getLessonItemStats : function(idLesson, idUserGroup, callbackSuccess) {
     var url = "/getLessonItemStats?idLesson=" + idLesson + "&idUserGroup=" + idUserGroup;
     this.callWebService(url, {}, callbackSuccess);
   },
   /**
    * Gets Answers To review for a specific lessonItem.
    * @param {Number} idLessonItem.
    */
   getAnswersToReview : function(idLessonItem, idUserGroup, callbackSuccess) {
     var url = "/getAnswerToReview?idLessonItem=" + idLessonItem + "&idUserGroup=" + idUserGroup;
     this.callWebService(url, {}, callbackSuccess);

   },
   /**
    * Sends review on a lesson Item answer.
    * @param {Number} idLessonItem.
    * @param {JSON} review.
    * @param {Function} callback.
    */
   sendReview : function(idLessonItemAnswer, review, callbackSuccess) {
     var url = "/sendReview?idLessonItemAnswer=" + idLessonItemAnswer;
     this.callWebService(url, {
           method : "POST",
           data : {review : review}
        }, callbackSuccess);
   },
   /**
    * Transpile Java Code.
    * @param {String} jsweetCode code.
    * @param {Function} callback.
    */
   transpileJavaCode : function(jsweetCode, callbackSucess, callbackFailure) {
     var url = appConstant.jsweetTranspileUrl;
     var bodyRequest = this.buildJsweetBodyPayload(jsweetCode);
     console.log(bodyRequest);
     this.callWebService(url, {
       method : "POST",
       headers : {'Content-Type': 'multipart/form-data; boundary=----WebKitFormBoundarykiwwYuA3574YQj3b'},
       data : bodyRequest
     }, callbackSucess, callbackFailure);
   },
   /**
    * @param {String} jsweetCode code.
    * @return {String} Payload body request.
    */
   buildJsweetBodyPayload : function(jsweetCode) {
     var lineBreak = " \n";
     return "------WebKitFormBoundarykiwwYuA3574YQj3b" + lineBreak +
         "Content-Disposition: form-data; name=\"javaCode\"" + lineBreak + lineBreak +
         jsweetCode + lineBreak + lineBreak +
         "------WebKitFormBoundarykiwwYuA3574YQj3b" + lineBreak +
         "Content-Disposition: form-data; name=\"tid\"" + lineBreak + lineBreak +
         "7698bb61-2a4e-b511-7ef1-a35e09500d52" + lineBreak +
         "------WebKitFormBoundarykiwwYuA3574YQj3b" + lineBreak +
         "Content-Disposition: form-data; name=\"tsout\"" + lineBreak + lineBreak +
         "true" + lineBreak +
         "------WebKitFormBoundarykiwwYuA3574YQj3b--";
   },
   //=========================================================================
   //= User Management.
   //=========================================================================
   /**
    * Sends a mail when user forgot his password.
    * @param {String} mail.
    * @param {Function} callback.
    */
   sendforgotPasswordMail : function(mail, callbackSucess, callbackFailure) {
     var url = "/sendforgotPasswordMail?mailForgotPassword=" + mail;
     this.callWebService(url, {
           method : "GET",
        }, callbackSucess, callbackFailure);
   },
   /**
    * Updates Password.
    * @param {String} password.
    * @param {Function} callback.
    */
   updatePassword : function(password, callbackSucess, callbackFailure) {
     var passwordHashed = utilService.hashPassword(password);
     var url = "/updatePassword?newPassword=" + passwordHashed;
     this.callWebService(url, {
           method : "GET",
        }, callbackSucess, callbackFailure);
   },
   /**
    * Changes Profile
    * @param firstName
    * @param lastName
    * @param mail
    */
   changeProfile : function(firstName, lastName, mail, callbackSuccess, callbackFailure) {
     var url = "/changeProfile?firstName=" + firstName + "&lastName=" + lastName
         + "&mail=" + mail;
     this.callWebService(url, {}, callbackSuccess, callbackFailure);
   }
 }
}]);




