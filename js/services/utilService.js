app.factory('utilService', ['$window', function(win) {
   return {
     /**
      * Transform a dictionary into an array.
      */
     toArray : function(dict) {
       var arr = [];
       for (var key in dict) {
         arr.push(dict[key]);
       }
       return arr;
     },
     /**
      * Transform an array into a dictionary.
      */
     toDictionnary : function(arr, key) {
       var dict = {};
       for (var i = 0; i < arr.length; i++) {
         dict[arr[i][key]] = arr[i];
       }
       return dict;
     },
     /**
      * Transform an array into a dictionary.
      * @param num Displays 2 digits in the number.
      */
     twoDigit : function(num) {
       return ("0" + num).slice(-2);
     },
     /**
      * Checks recursively whether all properties of two JSON are equals. 
      * @param x
      * @param y
      * @returns
      */
     objectEquals : function(x, y) {
       'use strict';
       if (x === null || x === undefined || y === null || y === undefined) { return x === y; }
       // after this just checking type of one would be enough
       if (x.constructor !== y.constructor) { return false; }
       // if they are functions, they should exactly refer to same one (because of closures)
       if (x instanceof Function) { return x === y; }
       // if they are regexps, they should exactly refer to same one (it is hard to better equality check on current ES)
       if (x instanceof RegExp) { return x === y; }
       if (x === y || x.valueOf() === y.valueOf()) { return true; }
       if (Array.isArray(x) && x.length !== y.length) { return false; }

       // if they are dates, they must had equal valueOf
       if (x instanceof Date) { return false; }

       // if they are strictly equal, they both need to be object at least
       if (!(x instanceof Object)) { return false; }
       if (!(y instanceof Object)) { return false; }

       // recursive object equality check
       var p = Object.keys(x);
       var that = this;
       return Object.keys(y).every(function (i) { return p.indexOf(i) !== -1; }) &&
           p.every(function (i) { return that.objectEquals(x[i], y[i]); });
     },
     /**
      * Displays Time
      */
     displayTime : function(d) {
       var f = this.twoDigit;
       return f(d.getHours()) + ":" + f(d.getMinutes()) + ":" + f(d.getSeconds());
     },
     /**
      * Displays Date from timestamp
      */
     displayUTCDate : function(timestamp) {
       return  (new Date(timestamp)).toString().split('GMT')[0];
     },
     /**
      * Initializes tooltips.
      * @param {Element} Element in which one we initialize tooltips.
      */
     initToolTips : function($element) {
       angular.element(document).ready(function () {
         $(function () {
           $($element).find('[data-toggle="tooltip"]').tooltip({container: 'body'})
         })
       });
     },
     /**
      * @return {String} Space used by localStorage.
      */
     getLocalStorageUsage : function() {
       var allStrings = '';
       for (var key in window.localStorage) {
           if(window.localStorage.hasOwnProperty(key)){
               allStrings += window.localStorage[key];
           }
       }
       var size  = 3 + ((allStrings.length*16)/(8*1024));
       size = size.toFixed(0);
       if (size < 1024) {
         size = size + ' KB';
       } else {
         size = (size / 1024).toFixed(3) + ' MB';
       }
       return allStrings ? size : 'Empty (0 KB)';
     },
     /**
      * Hashes a password.
      */
     hashPassword : function(password) {
       return Sha1.hash("" + password);
     }
   }
 }]);