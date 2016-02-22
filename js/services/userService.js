app.factory('userService', ["webService", "$location", "$rootScope",
                    function(webService, $location, $rootScope) {
  document.cookie="username=John Doe";
  var currentUser = {};
  var urlLoginTried = undefined;
  webService.getCurrentUser(function(data) {
    if (data.user) {
      currentUser = data.user;
      $rootScope.$emit("gotCurrentUser");
    } else {
      if (window.location.hash.length > 2) {
        urlLoginTried = window.location.hash;
        console.log("save urlLoginTried " + urlLoginTried);
        $location.path("/")
      }
    }
  });
  
  return {
     /**
      * Saves user.
      */
     saveUser : function(user) {
       currentUser = user;
     },
     /**
      * Gets user.
      */
     getUser : function() {
       return currentUser;
     },
     /**
      * Gets user.
      */
     getUserName : function() {
       return currentUser ? currentUser.firstName + " "  + currentUser.lastName : "";
     },
     getUrlLoginTried : function() {
       return urlLoginTried;
     }
   }
}]);