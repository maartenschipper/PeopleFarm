<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/main.css">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
    <script type="text/javascript" src="resources/controller/controller.js"></script>
    <script type="text/javascript" src="resources/api_engine/api_engine.js"></script>
    <script type="text/javascript" src="resources/api_engine/mock.js"></script>

    <script type="text/javascript" src="resources/person/person.js"></script>

</head>
<body ng-app="PeopleApp" ng-controller="PeopleCtrl" ng-class="cursor">

<div class="container-fluid">
	<div class="row">
		<div id="PeopleGrid" class="col-md-9">
			<div id="people_{{person.id}}" class="people" ng-class="'sprite' + person.sprite + ' ' + person.fullGender" ng-repeat="person in persons" ng-show="person.visible">
        		<div class="imgContainer" ng-click="personClicked(person)">
        		</div>
       			<div class="overview">
            		<div class="title"><h1>Worker &num;{{("000" + person.id).slice(-4)}}</h1></div>
            		<p class="percLabel">Tiredness:</p><div class="percBarContainer {{getBarPc(person.status.tiredness)}}"><div ng-style="{'width': person.status.tiredness + '%' }">{{person.status.tiredness}}</div></div>
            		<p class="percLabel">Hunger:</p><div class="percBarContainer {{getBarPc(person.status.hunger)}}"><div ng-style="{'width': person.status.hunger + '%' }">{{person.status.hunger}}</div></div>
        		</div>
    		</div>
		</div>
		<div id="settingScreenArea" class="col-md-3">
			<div class="settingScreen">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
  					<li class="nav-item">
    					<a class="nav-link active" id="game-tab" data-toggle="tab" href="#game" role="tab" aria-controls="game" aria-selected="true">Game</a>
  					</li>
  					<li class="nav-item">
    					<a class="nav-link" id="settings-tab" data-toggle="tab" href="#settings" role="tab" aria-controls="settings" aria-selected="false">Settings</a>
  					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
 					<div class="tab-pane fade show active" id="game" role="tabpanel" aria-labelledby="game-tab">
 						<h1>Game</h1>
 						<div id="playerScore">Score : 1337</div>
 						
 						</br>
 						<div id="actionButtons">
					    	<div id="actionEating" class="actionButton" ng-click="setClickAction('eat')"></div>
					    	<div id="actionSleeping" class="actionButton" ng-click="setClickAction('sleep')"></div>
					    	<div id="actionNone" class="actionButton" ng-click="actionNone()"></div>
					    	<div id="actionKill" class="actionButton" ng-click="setClickAction('kill')"></div>
					    	<div id="actionUpdate" class="actionButton" ng-click="actionUpdate()"></div>
						</div>
 					</div>
 					<div class="tab-pane fade" id="settings" role="tabpanel" aria-labelledby="settings-tab">
 						<h1>Settings</h1>
 					</div>
				</div>
			</div>	
		</div>
	</div>
</div>
<footer>
	<small class="rainbow">&copy; Copyright 2017, PeopleFarm Company</small>
</footer>
</body>
</html>
