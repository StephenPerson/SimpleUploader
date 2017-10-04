app.controller('NavCtrl', function($scope) {
	// add links to navbar
	var list = [];
	addEntry = function(name,link) {
		list.push({
			key: name,
			value: link
		});
	}
	addEntry('Home', '/');
	addEntry('About', '/about');
	$scope.navlistuser = list;

	$scope.isLast = function(key) {
		if(key === list[list.length-1].key)
			return true;
		else
			return false;
	}


})
.controller('HomeCtrl', function($scope, $http) {
	$scope.homeModal = window.location.pathname;
})
.controller('SeriesCtrl', function($scope, $http) {
	
});