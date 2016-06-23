var reportings=angular.module('adminModule',['ui.bootstrap','angularUtils.directives.dirPagination']);

reportings.directive('fdInput', [function fdInput() {

    return {
        scope: {
          fileName: '='
        },
        link: function(scope, element, attrs) {
          element.on('change', function(evt) {
            var files = evt.target.files;
            console.log(files[0].name);
            console.log(files[0].size);

            scope.fileName = files[0].name;
            scope.$apply();
           
           
          });
        }
      }
    }]);

reportings.controller('adminsController',['$scope', '$http', '$rootScope', '$location',
                                function($scope, $http, $rootScope, $location) {
	
$scope.currentPage = 1;	
$scope.pageSize = 5;
	$http.get('./admin.json').success(function(data) {
		  $rootScope.users = data;
		 
	});
	
	

	$scope.uncheck=function(){
	
		
		if($scope.checked1==true||$scope.checked2==true||$scope.checked3==true||$scope.checked4==true||
				$scope.checked5==true){
		
		
			$scope.checked1=false;
			$scope.checked2=false;
			$scope.checked3=false;
			$scope.checked4=false;
			$scope.checked5=false;
		}
	}
	
	$scope.saveAll=function(){
		if($scope.checked1==false && $scope.checked2==false && $scope.checked3==false && $scope.checked4==false &&
				$scope.checked5==false){
			
			alert("No changes to save.Give access to atleast one user and proceed.");
		}
		else{
			
			alert("Changes saved");
			
		}
		
	}
	
$scope.add=function(){
		
		if($scope.fileName!=undefined){
			alert($scope.fileName+"File successfully added!!");
		}
		else{
			alert("Please select a file!");
		}	
		
	}
	
	
}]);	