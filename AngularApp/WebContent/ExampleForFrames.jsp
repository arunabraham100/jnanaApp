<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sample admin page</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.3.3/ui-bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.3.3/ui-bootstrap-tpls.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<script type="text/javascript" src="./mainModule.js"></script>
<script type="text/javascript" src="./searchModule.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/danialfarid-angular-file-upload/12.0.4/ng-file-upload-shim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/danialfarid-angular-file-upload/12.0.4/ng-file-upload.min.js"></script>
<script type="text/javascript" src="./admin.js"></script>
<style>
.c1 {
	display: none;
}

.btn-info {
	background-color: gray !important;
	border: 1px solid gray !important;
}

h1 {
	color: cornflowerblue;
	font-size: 22px;
	font-weight: bold;
	text-color: gray;
}

.active {
	font-size: 16px;
	padding-right: 12px;
}

.btn-info {
	background-color: gray !important;
	border: 1px solid gray !important;
}

span {
	color: black;
	font-size: 25px;
}

.fill {
	min-height: 100%;
	height: 100%;
}

html, body {
	height: 100%;
	width: 100%;
}

.w3-card-2 {box-shadow:0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important; color: #45gfff;}

.w3-sidenav a {text-decoration:none!important; }
</style>

<script>
function opentab(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("c1");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " w3-red";
}
</script>
</head>

<body style="background-color: white" ng-app="AdminModule">
	<div ng-include="'./Header.jsp'"></div>
	<h2>Admin</h2>
	<hr color="grey" style="height: 1px;">
	<div class="container">
		<div class="row">
			<div class="col-sm-3" style="background-color: white">
				<nav class="w3-sidenav w3-card-2" style="width:130px">
  					<table>
  					<tr>
						<td>
							<ul class="nav nav-pills nav-stacked">
  								<li role="presentation"> <a href="#" class="tablink" onclick="opentab(event, 'ConfigSearchPath')" class="btn btn-primary btn-lg active">Configure search paths</a></li> 
 								<li role="presentation"> <a href="#" class="tablink" onclick="opentab(event, 'UserPermission')">User permission</a> </li>
  								<li role="presentation"> <a href="#" class="tablink" onclick="opentab(event, 'MonitorJobs')">Monitor Jobs</a> </li>  			
  								<li role="presentation"> <a href="#" class="tablink" onclick="opentab(event, 'OrganizeLinks')">Organise links</a> </li>
  							</ul>
  						</td>
  						</tr>
  					</table>
				</nav>
			</div>
			<div style="margin-left: 130px">
				<div id="ConfigSearchPath" class="w3-container c1 w3-animate-left">
						<table style="border: 2px black; background-color: white; width: 70%;">
						<tr>
							<td><h2>Add LAN</h2></td>
						</tr>
						<tr>
							<td><div style="width: 90%" ngf-select="upload($file)">
									<input type="file" class="form-control" ng-model="file">
								</div></td>
							<td><button class="btn-default">ADD</button></td>
						</tr>
						<tr>
							<td><hr color="grey" style="height: 1px;"></td>
						</tr>
						<tr>
							<td><h2>Existing LANs</h2></td>
						</tr>
						<tr>
							<td><hr color="grey" style="height: 1px;">
								<span style="margin-right: 3em; font-size: medium"><a
									href="http://www.google.com">Lorem Epsum Dolor Sit</a></span></td>
							<td><a href="#" class="icon"><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>

						<tr>
							<td><hr color="grey" style="height: 1px;">
								<span style="margin-right: 3em; font-size: medium"> <a
									href="http://www.google.com">Lorem Epsum Dolor Sit</a></span></td>
							<td><a href="#" class="icon"><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>

						<tr>
							<td><hr color="grey" style="height: 1px;">
								<span style="margin-right: 3em; font-size: medium"> <a
									href="http://www.google.com">Lorem Epsum Dolor Sit</a></span></td>
							<td><a href="#" class="icon"><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>

						<tr>
							<td><hr color="grey" style="height: 1px;">
								<span style="margin-right: 3em; font-size: medium"> <a
									href="http://www.google.com">Lorem Epsum Dolor Sit</a></span></td>
							<td><a href="#" class="icon"><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>

						<tr>
							<td>
								<hr color="grey" style="height: 1px;">
								<span style="margin-right: 3em; font-size: medium"> <a
									href="http://www.google.com">Lorem Epsum Dolor Sit</a></span>
							</td>
							<td><a href="#" class="icon"><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>
					</table>
				</div>
				<div id="UserPermission" class="w3-container c1 w3-animate-opacity" style="width: 100%">
					<table style="border: 2px black; background-color: white; width: 70%;">
					 <tr>
						<td>Search For User :
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search for..."> <span
									class="input-group-btn">
									<button class="btn btn-default" type="button">Go!</button>
								</span>
							</div>
						</td>
					</tr>
					 <tr>
						<td>
							<hr color="grey" style="height: 1px;">
							<h4>
								<b>Permission Details For "Andre"</b>
							</h4>
						</td>
					</tr>
					<tr>
						<td></td>
						<td>Admin</td>
					</tr>
					<tr>
						<td><span style="margin-right: 3em; font-size: medium">Andrew
								Lincoln </span></td>
						<td><span> <input type="checkbox" ng-model="checked1"></span>
					</tr>


					<tr>
						<td>
							<hr color="grey" style="height: 1px;">
							<span style="margin-right: 3em; font-size: medium">Andrea
								Chan </span>
						</td>
						<td><span> <input type="checkbox" ng-model="checked2"></span>
					</tr>


					<tr>
						<td>
							<hr color="grey" style="height: 1px;">
							<span style="margin-right: 3em; font-size: medium">Andre
								Rusell </span>
						</td>
						<td><span> <input type="checkbox" ng-model="checked3"></span>
					</tr>

					<tr>
						<td>
							<hr color="grey" style="height: 1px;">
							<span style="margin-right: 3em; font-size: medium">Andre
								Jones </span>
						</td>
						<td><span> <input type="checkbox" ng-model="checked4"></span>
					</tr>

					<tr>
						<td>
							<hr color="grey" style="height: 1px;">
							<span style="margin-right: 3em; font-size: medium">Anderson
								Thompson </span>
						</td>
						<td><span> <input type="checkbox" ng-model="checked5"></span>
					</tr> 
				</table>
				<br>
				<br><div align="Left">
						<button ng-model="button" ng-disabled="checked"
							class="btn btn-default">Cancel</button>
						<button type="button" class="btn btn-default">Save</button>
					</div>
				</div>

				<div id="MonitorJobs" class="w3-container c1 w3-animate-zoom">
					sadasd
				</div>
				<div id="OrganizeLinks" class="w3-container c1 w3-animate-zoom">
					gfghfghf
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>