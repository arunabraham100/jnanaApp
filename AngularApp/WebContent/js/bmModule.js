var bmModel=angular.module('bmModule',[]);

bmModel.controller('bmController',['$scope', '$http', '$rootScope', '$location',
                                          function($scope, $http, $rootScope, $location) {
          	
	
	$scope.bookmarks=["All Tags","Rating","Occurance","Visit"];
       $scope.selectedOption=$scope.bookmarks[0];
          }]);	