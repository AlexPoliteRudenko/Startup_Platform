var PasswordResetService = angular.module('greatStartApp')
    .service('PasswordResetService', function ($rootScope, $http) {
        return {
            authenticate: function (credentials, callback) {

                var headers = credentials ? {
                    authorization: "Basic " + btoa(credentials.email + ":" + credentials.password)
                } : {};
                $http.get('user', {headers: headers}).then(function (response) {
                    if (response.data.name) {
                        $rootScope.authenticated = true;
                    } else {
                        $rootScope.authenticated = false;
                    }
                    callback && callback();
                }, function () {
                    $rootScope.authenticated = false;
                    callback && callback();
                });
            }
        }
    });