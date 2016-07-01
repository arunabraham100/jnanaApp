var bmModel=angular.module('myApplication',[]);

bmModel.controller('LoginCtrl',['$scope', '$http', '$rootScope', '$location',
                                          function($scope, $http, $rootScope, $location) {
          	
	$http.get('http://localhost:8006/AngualrRestApp/rest/product/findall').success(function(data) {
		$rootScope.result={};
		$rootScope.result=data.Product;
		alert($rootScope.result);
		
		
	})
	
          }]);	