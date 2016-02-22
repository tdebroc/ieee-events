app.controller('MainController', [
		"$scope",
		"$rootScope",
		"$mdDialog",
		'filterFilter',
		function($scope, $rootScope, $mdDialog,  filterFilter) {
			$scope.meetings = meetings;
			$scope.sections = getUniqueElements(meetings, "section");
			$scope.categories = getUniqueElements(meetings, "category");
			$scope.meetingDisplayed = [];
			
			//================================================================
			//= Utilities.
			//================================================================
			function getUniqueElements(meetings, name) {
				var arr = [];
				for (var i = 0; i < meetings.length; i++) {
					var element = meetings[i][name];
					if (arr.indexOf(element) == -1) {
						arr.push(element);
					}
				}
				return arr;
			}

			//================================================================
			//= All Events Map.
			//================================================================
			$scope.allEventsMarkers = [];
			$scope.allEventsMap  ={
					center : {
						latitude: 30, longitude: 1
					},
					zoom : 2
			}
			
			$scope.onMarkerClick = function(marker, event, meeting) {
				$scope.showEventDialog(undefined, meeting);
			} 
			
			$scope.meetingsToDisplay = [];
			$scope.makersToDisplay = [];
			$scope.$watchGroup(["sectionFilter", "categoryFilter", "searchText"], function(oldVal, newVal) {
				$scope.meetingsToDisplay = [];
				$scope.makersToDisplay = [];
				var meetings2 = filterFilter(angular.copy(meetings), $scope.searchText);
				
				for (var i = 0; i < meetings2.length; i++) {
					var meeting = meetings2[i];
					if ((meeting.category == $scope.categoryFilter || !$scope.categoryFilter) &&
					    (meeting.section == $scope.sectionFilter || !$scope.sectionFilter)) {
						$scope.meetingsToDisplay.push(meeting);
						if (meeting.latitude && meeting.longitude) {
							$scope.makersToDisplay.push(meeting);
						}
					}
				}
			});
			
			
			
			//================================================================
			//= Event Dialog.
			//================================================================
			$scope.showEventDialog = function(ev, meeting) {
				$scope.meetingSelected = meeting;
				$scope.modalMap = { center : {
										latitude : meeting.latitude,
										longitude : meeting.longitude,
									}, zoom : 8 };
				$scope.markerModalMap = {center : {
					latitude : meeting.latitude,
					longitude : meeting.longitude
			    }};
				$mdDialog.show({
					templateUrl : 'templates/eventDialog.tmpl.html',
					parent : angular.element("#lesson-page-wrapper"),
					targetEvent : ev,
					clickOutsideToClose : true,
					scope : $scope,
					preserveScope : true
				});
			};

			$scope.hideEventDialog = function() {
				$mdDialog.hide();
			};
			$scope.cancelEventDialog = function() {
				$mdDialog.cancel();
			};
			$scope.closeEventDialog = function(info) {
				$mdDialog.hide(info);
			};
			
			$scope.shouldDisplaySimpleText = function(key) {
				var textElements = ["title", "start_time", "end_time", "category", "description", "keywords", "city", "state", "country", "section", "latitude", "longitude"]
				return textElements.indexOf(key) != -1;
			}

			//$scope.map = { center: { latitude: 45, longitude: -73 }, zoom: 8 };
			
		} ]);