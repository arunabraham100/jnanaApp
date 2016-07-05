var myApplication = angular.module('myApplication',['ngRoute','searchModule','adminModule','reportsModule','bmModule','angular-jqcloud','euTree.directive']);


myApplication.config(['$routeProvider',
                      function($routeProvider) {
                          $routeProvider.
                          when('/main', {
                              templateUrl: 'search.jsp',
                              controller: 'searchCtrl'                              	
                                }).when('/Reports',{ 
                                	
                                	templateUrl:'Reports.jsp',
                                	controller:'reportsController'                                	
                                }).when('/Result',{
                                	
                                	templateUrl:'Result.jsp',
                                	  controller: 'searchCtrl'                                	
                                }).when('/Admin',{
                                	
                                	templateUrl:'admin.jsp',
                                	controller:'adminsController'
                                	}).
                                	when('/bookmark',{
                                		
                                		templateUrl:'bookmark.jsp',
                                		controller:'bmController'
                                	}).
                                	otherwise({
                                		
                              redirectTo: '/main'
                          });
                      }]);


