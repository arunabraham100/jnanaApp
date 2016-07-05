<!DOCTYPE html>
<html ng-app="myApplication">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
        <title>Jnana</title>        
        <!-- Latest compiled JavaScript -->
       	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>    
    	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script> 
           <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
		<script src="./new.js"></script>
    </head>
   
    <body style="background-color:white"  ng-controller="LoginCtrl">
    	<div class="container" style="width: 1200px; !important"> 
    	<div class="panel panel-primary text-left" style="margin-left:-14px;margin-right: 12px;">
			<div class="panel-heading"><h4>Product Details</h4></div>
				<div class="panel-body">
					<table class="table">
					<tbody>
    	<tr>
    	<th>
    	Id
    	</th>
    	<th>
    	name
    	</th><th>
    	Quality
    	</th><th>
    	Price
    	</th>
    	</tr>
    	<tr ng-repeat="product in result">
    	<td ng-repeat="(key, val) in product">
    	{{val}}
    	</td>
    	
    	</tr>
    	</tbody>
    	</table>
        </div>    
       </div>
       </div>
    </body> 
      
</html>

