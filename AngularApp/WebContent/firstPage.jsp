<!DOCTYPE html>
<html ng-app="myApplication">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Jnana</title>        
        <!-- Latest compiled JavaScript -->
       	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>    
    	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script> 
     	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script> 
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>         
        <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.3.3/ui-bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.3.3/ui-bootstrap-tpls.min.js"></script>  
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
		<script src="js/jqcloud-1.0.4.min.js"></script>
		<script src="js/angular-jqcloud.js"></script>
		<link rel="stylesheet" href="css/jqcloud.css">
		<script type="text/javascript" src="./js/dirPagination.js"></script>
        <script type="text/javascript" src="./js/mainModule.js"></script>
        <script type="text/javascript" src="./js/searchModule.js"></script>
        <script type="text/javascript" src="./js/adminModule.js"></script>
        <script type="text/javascript" src="./js/reportsModule.js"></script>
        <script type="text/javascript" src="./js/bmModule.js"></script>
   		<link href="css/footer.css" type="text/css" rel="stylesheet">  
   		<link href="css/main.css" type="text/css" rel="stylesheet"> 
    </head>
   
    <body style="background-color:white">
    	<div class="container" style="width: 1200px; !important"> 
     	<div ng-include = "'./Header.jsp'"></div>
        <div ng-view></div>
        </div>    
       
    </body>   
</html>

