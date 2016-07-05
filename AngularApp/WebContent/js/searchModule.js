var result=angular.module('searchModule',['angular-jqcloud','ui.bootstrap','angularUtils.directives.dirPagination']);

result.controller('searchCtrl',['$scope', '$http', '$rootScope', '$location',
                   function($scope, $http, $rootScope, $location) {	
	
	
	$scope.roleList = [{
        "roleName": "C:",
            "roleId": "role1",
            "children": [
                         {
            "roleName": "Downloads",
                "roleId": "role12",
                "children": [
           {
                "roleName": "Eclipse",
                    "roleId": "role13",
                    "children": [
           {
                    "roleName": "Jnana",
                        "roleId": "role14",
                        "children": [
                 {
                    "roleName": "File",
                        "roleId": "role15",
                        "children": []
                 }]
           
                }]
            }]
        }]
    }, 
    ];
	
	$scope.currentPage = 1;
	$scope.pageSize = 5;
	
	$scope.starRating3 = 0;
    $scope.hoverRating3 = 0;

$scope.click3 = function (param) {
        console.log('Click');
    };

    $scope.mouseHover3 = function (param) {
        console.log('mouseHover(' + param + ')');
        $scope.hoverRating3 = param;
    };

    $scope.mouseLeave3 = function (param) {
        console.log('mouseLeave(' + param + ')');
        $scope.hoverRating3 = param + '*';
    };
	
	$scope.changeclass=function(){
		document.getElementsByClassName("tablinks")[1].setAttribute("class","active");
	}
	$scope.words = [ {text: "Concourse", weight: 100, link: "http://jquery.com/"},
                                                                 {text: "signup", weight: 9, link: "http://jquery.com/"},
                                                                 {text: "use", weight: 15, link: "http://jquery.com/"},
                                                                 {text: "students", weight: 7,link: "http://jquery.com/"},
                                                                 {text: "register", weight: 5,link: "http://jquery.com/"},
                                                                 {text: "learn", weight: 50,link: "http://jquery.com/"},
                                                                 {text: "system", weight: 9, link: "http://jquery.com/"},
                                                                 {text: "stream", weight: 15,link: "http://jquery.com/"},
                                                                 {text: "Quote", weight: 7,link: "http://jquery.com/"},
                                                                 {text: "Division", weight: 5,link: "http://jquery.com/"},
                                                                 {text: "Subjects", weight: 40,link: "http://jquery.com/"},
                                                                 {text: "results", weight: 9, link: "http://jquery.com/"},
                                                                 {text: "teachers", weight: 15,link: "http://jquery.com/"},
                                                                 {text: "lectures", weight: 7,link: "http://jquery.com/"},
                                                                 {text: "input", weight: 5,link: "http://jquery.com/"},
                                                                 {text: "infrastructure", weight: 30,link: "http://jquery.com/"},
                                                                 {text: "computers", weight: 9, link: "http://jquery.com/"},
                                                                 {text: "biology", weight: 15,link: "http://jquery.com/"},
                                                                 {text: "English", weight: 7,link: "http://jquery.com/"},
                                                                 {text: "Science", weight: 5,link: "http://jquery.com/"}]; 
	$('#wordcloud').jQCloud($scope.words);
	
	
	$scope.openopt=function(evt, opName) {

	    // Declare all variables
	    var i, tabcontent, tablinks;

	    // Get all elements with class="tabcontent" and hide them
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }

	    // Get all elements with class="tablinks" and remove the class "active"
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	    }

	    // Show the current tab, and add an "active" class to the link that opened the tab
	    document.getElementById(opName).style.display = "block";
	   /* evt.currentTarget.className += " active";
	    evt.currentTarget.className += " changed";*/
	}
	
	$scope.init=function($evt,wordcloud){
		$scope.openopt($evt,wordcloud);
		$scope.changeclass();
	}
	/* $scope.curPage = 0;
	 $scope.pageSize = 5;*/
	
	  			$http.get('./documents.json').success(function(data) {
	  			  $rootScope.documents = data;
	  			  
	  			  
	  			
	  			  $scope.resultValidate=function(){
	  				  if($scope.searchtag==='metlife'||$scope.searchtag==='metlife_info'){
	  					 $location.path('Result'); 
	  				  }
			 
			
			 
			 
			
		};
    });
	  			
	  			$scope.PreviewImage= function(src) {
	  				 
	  		      	var fullPath = src;
	  		      	//alert(fullPath);
	  		      	if (fullPath) {
	  		      	    var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	  		      	    var filename = fullPath.substring(startIndex);
	  		      	    if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	  		      	        filename = filename.substring(1);
	  		      	    }
	  		      	    
	  		      	}
	  		      	var ext = filename.substr(filename.lastIndexOf('.') + 1);
	  		      	 $("#video").empty();
	  		      	if(ext=='pdf'||ext=='docx')
	  		      		{
	  		      	/*pdffile=document.getElementById("f1").files[0];
	  		      		
	  		          pdffile_url=URL.createObjectURL(fullPath);
	  		         alert(pdffile_url);*/
	  		         var pdfObject="<object data='"+fullPath+"' type='application/pdf' width='300' height='200'>";
	  		         pdfObject=pdfObject+ "alt : <a href='"+fullPath+"'>pdffile_url</a> </object>";
	  		         $("#video").append(pdfObject);
	  		        //  $('#viewer').attr('src',pdffile_url); 
	  		      		}
	  		      	else if(ext=='mp4')
	  		      		{
	  		      		
	  		      		var src = "<video width='320' height='240' controls src='"+fullPath+"' type='video/wmv'></video>";
	  		      		$("#video").append(src);
	  		      		}
	  			 }
	  			
	  			
	
}]);

angular.module('euTree.directive', [])
.directive('treeElement', function ($compile) {
return {
    restrict: 'E', //Element
    link: function (scope, element, attrs) {
        scope.tree = scope.node;

        var visibility = (attrs.nodeState != "collapse") || 'style="display: none;"';

        if (scope.tree.children.length) {
            for (var i in scope.tree.children) {
                if (scope.tree.children[i].children.length) {
                    scope.tree.children[i].className = "eu_" + attrs.nodeState + " eu_deselected";
                } else {
                    scope.tree.children[i].className = "eu_child" + " eu_deselected";
                }
            }

            var template = angular.element('<ul ' + visibility + '><li ng-repeat="node in tree.children" node-id={{node.' + attrs.nodeId + '}} ng-class="node.className">{{node.' + attrs.nodeName + '}}<tree-element tree="node" node-id=' + attrs.nodeId + ' node-name=' + attrs.nodeName + ' node-state=' + attrs.nodeState + '></tree-element></li></ul>');

            var linkFunction = $compile(template);
            linkFunction(scope);
            element.replaceWith(template);
        } else {
            element.remove();
        }
    }
};
})
.directive('euTree', function ($compile) {
return {
    restrict: 'E', //Element
    link: function (scope, element, attrs) {
        scope.selectedNode = null;

        //CSS for TREE
        var sheet = document.createElement('style')
        sheet.innerHTML =
            "eu-tree ul{margin:0;padding:0;list-style:none;border:none;overflow:hidden;text-decoration:none;color:#555}" +
            "eu-tree li{position:relative;padding:0 0 0 20px;font-size:13px;font-weight:initial;line-height:18px;cursor:pointer}" +
            "eu-tree .eu_expand{background:url(" + attrs.expandIcon + ") no-repeat}" +
            "eu-tree .eu_collapse{background:url(" + attrs.collapseIcon + ") no-repeat}" +
            "eu-tree .eu_child{background:url(" + attrs.childIcon + ") no-repeat}" +
            "eu-tree .eu_selected{font-weight:bold;}" +
            "eu-tree .hide{display:none;}" +
            "eu-tree .eu_deselected{font-weight:normal;}";
        document.body.appendChild(sheet);


        scope.$watch(attrs.treeData, function (val) {
            for (var i in scope[attrs.treeData]) {
                if (scope[attrs.treeData][i].children.length) {
                    scope[attrs.treeData][i].className = "eu_" + attrs.nodeState + " eu_deselected";
                } else {
                    scope[attrs.treeData][i].className = "eu_child" + " eu_deselected";
                }
            }

            var template = angular.element('<ul id="euTreeBrowser" class="filetree treeview-famfamfam treeview"><li ng-repeat="node in ' + attrs.treeData + '" node-id={{node.' + attrs.nodeId + '}} ng-class="node.className">{{node.' + attrs.nodeName + '}}<tree-element tree="node" node-id=' + attrs.nodeId + ' node-name=' + attrs.nodeName + ' node-state=' + attrs.nodeState + '></tree-element></li></ul>');

            var linkFunction = $compile(template);
            linkFunction(scope);
            element.html(null).append(template);



            //Click Event
            angular.element(document.getElementById('euTreeBrowser')).unbind().bind('click', function (e) {
                if (angular.element(e.target).length) {
                    scope.previousElement = scope.currentElement;

                    scope.currentElement = angular.element(e.target);

                    scope.$broadcast('nodeSelected', {
                        selectedNode: scope.currentElement.attr('node-id')
                    });

                    if (scope.previousElement) {
                        scope.previousElement.addClass("eu_deselected").removeClass("eu_selected");
                    }
                    scope.currentElement.addClass("eu_selected").removeClass("eu_deselected");

                    if (scope.currentElement.children().length) {
                        scope.currentElement.children().toggleClass("hide");
                        //$(e.target).children().slideToggle("fast");

                        scope.currentElement.toggleClass("eu_collapse");
                        scope.currentElement.toggleClass("eu_expand");
                    }
                }

            });



        }, true);
    }
};
});

result.directive('starRating', function () {
    return {
        scope: {
            rating: '=',
            maxRating: '@',
            readOnly: '@',
            click: "&",
            mouseHover: "&",
            mouseLeave: "&"
        },
        restrict: 'EA',
        template:
            "<div style='display: inline-block; margin: 0px; padding: 0px; cursor:pointer;' ng-repeat='idx in maxRatings track by $index'> \
                    <img ng-src='{{((hoverValue + _rating) <= $index) && \"http://www.codeproject.com/script/ratings/images/star-empty-lg.png\" || \"http://www.codeproject.com/script/ratings/images/star-fill-lg.png\"}}' \
                    ng-Click='isolatedClick($index + 1)' \
                    ng-mouseenter='isolatedMouseHover($index + 1)' \
                    ng-mouseleave='isolatedMouseLeave($index + 1)'></img> \
            </div>",
        compile: function (element, attrs) {
            if (!attrs.maxRating || (Number(attrs.maxRating) <= 0)) {
                attrs.maxRating = '5';
            };
        },
        controller: function ($scope, $element, $attrs) {
            $scope.maxRatings = [];

            for (var i = 1; i <= $scope.maxRating; i++) {
                $scope.maxRatings.push({});
            };

            $scope._rating = $scope.rating;
			
			$scope.isolatedClick = function (param) {
				if ($scope.readOnly == 'true') return;

				$scope.rating = $scope._rating = param;
				$scope.hoverValue = 0;
				$scope.click({
					param: param
				});
			};

			$scope.isolatedMouseHover = function (param) {
				if ($scope.readOnly == 'true') return;

				$scope._rating = 0;
				$scope.hoverValue = param;
				$scope.mouseHover({
					param: param
				});
			};

			$scope.isolatedMouseLeave = function (param) {
				if ($scope.readOnly == 'true') return;

				$scope._rating = $scope.rating;
				$scope.hoverValue = 0;
				$scope.mouseLeave({
					param: param
				});
			};
        }
    };
});

