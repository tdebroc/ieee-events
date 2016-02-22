<!doctype html>
<html ng-app="myApp"  >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>IEEE Region 8 EEP</title>
        <script src="https://maps.googleapis.com/maps/api/js"></script>
				<meta name="viewport" content="width=device-width, initial-scale=1">
				
				<link rel="shortcut icon" href="sunset_surf.ico" />
				<!-- CSS -->
				<!-- Libraries -->
				<link rel="stylesheet" href="css/angular-material.min.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
				<link rel="stylesheet" href="css/font-awesome.css"/>
				<!-- Generic Platform -->
				<link rel="stylesheet" href="css/generic-style.css"/>
				<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
				<!-- Modules -->
				

    </head>
    <body ng-controller="MainController">
    	<div id="header" class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10" style="background-color: rgb(16, 108, 200); ">
              <h1 class="site-title">
                <a href="http://www.ieeer8.org/" rel="home" style="color: white;">IEEE Region 8</a>
              </h1>
            </div>
      </div>
        
      <div id="introduction" class="row" >
        <div class="col-md-1"></div>
        <div class="col-md-10">
          <h2>Welcome to Region 8 IEEE Event Exchange Program</h2>
					<img src="images/icons2/searchicon.png" width="30"/>
					<md-input-container style="width:180px;display:inline-block">
		        <label>title, keywords, date...</label>
		        <input ng-model="searchText" type="text" >
		      </md-input-container>
          or filter by section:
          <md-input-container style="width: 150px;display: inline-block;">
					  <md-select ng-model="sectionFilter" placeholder="Select a state" ng-change="changeFilter()">
					    <md-option ng-value="undefined">ALL</md-option>
					    <md-option ng-value="section" ng-repeat="section in sections">{{ section }}</md-option>
					  </md-select>
					</md-input-container>
          or by category:
          <md-input-container style="width: 150px;display: inline-block;">
					  <md-select ng-model="categoryFilter" placeholder="Select a category">
					  <md-option ng-value="undefined">ALL</md-option>
					    <md-option ng-value="category" ng-repeat="category in categories">{{ category }}</md-option>
					  </md-select>
					</md-input-container>
		      &nbsp;
		      <span>
						<b>({{meetingsToDisplay.length}} events)</b>
					</span>
        </div>
      </div>
      
      
      
      <div class="row" id="eventMap">
        <div class="col-md-1"></div>
        <div class="col-md-10">
	        <md-content>
				    <md-tabs md-dynamic-height="" md-border-bottom="">
				      <md-tab>
				        <md-tab-label>
						      <img src='images/icons2/list_bullets_black.png' style="width: 20px" />
						      List
						    </md-tab-label>
				        <md-content class="md-padding">
				          <ng-include src="'templates/eventList.tmpl.html'">
									</ng-include>
				        </md-content>
				      </md-tab>
				      <md-tab>
				        <md-tab-label>
						      <img src='images/icons2/maps-icon.png' style="width: 30px" />
						      Map
						    </md-tab-label>
				        <md-content class="md-padding">
				        	<ng-include src="'templates/eventMap.tmpl.html'">
									</ng-include>
				        </md-content>
				      </md-tab>
				    </md-tabs>
				  </md-content>
				</div>
			  <div class="col-md-1"></div>
			</div>
      
    
    
			<div id="includeScripts">
				<?
					error_reporting(E_ALL);
					ini_set('display_errors', 1);
					require ("server/connectDB.php");
					$req="SELECT * FROM meetings";
					$meetings = $pdo->query($req);
					while ($meeting = $meetings->fetch(PDO::FETCH_ASSOC)) {
					   $data[] = $meeting;
	        }
	      ?>
				<script type="text/javascript">
				  var meetings = <?php echo json_encode($data); ?>;
				</script>
				<!-- Scripts -->
				<script src="js/lib/jquery/jquery-1.11.2.min.js"></script>
				<!-- Lib -->
		    <script src="js/lib/bootstrap/bootstrap.js"></script>
		    <script src="bower_components/lodash/lodash.js"></script>
				<!-- Angular -->
				<script src="components/angular/angular.min.js"></script>
				<script src="js/lib/angular/angular-route-1.3.15.js"></script>
				<script src="js/lib/angular/angular-sanitize.js"></script>
				<script src="js/lib/angular/angular-ui-tree.min.js"></script>
				<script src="js/lib/angular/angular-resizable.min.js"></script>
				<script src="components/angular-animate/angular-animate.js"></script>
				<script src="js/lib/angular/angular-simple-logger.js"></script>
				<script src="bower_components/angular-google-maps/dist/angular-google-maps.js"></script>
				<script src="js/lib/angular/angular-aria.min.js"></script>
				<script src="js/lib/angular/angular-material.min.js"></script>
				<!-- Angular Main -->
				<script src="js/app.js"></script>
		
				<!-- Angular Controllers -->
				<script src="js/controllers/mainController.js"></script>
			  <!-- Angular Filters -->
			</div>
    </body>                    
</html>


