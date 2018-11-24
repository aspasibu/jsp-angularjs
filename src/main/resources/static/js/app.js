var mainModule = angular.module('mainModule', ['smart-table']);

mainModule.controller('mainController', function ($scope, $http) {
    // instance of smart-table
    var tableInstance = null;

    $scope.callServer = function callServer(tableState) {
        tableInstance = tableState;

        var pagination = tableState.pagination;

        var start = pagination.start || 0;     // This is NOT the page number, but the index of item in the list that you want to use to display the table.
        var number = pagination.number || 10;  // Number of entries showed per page.
        var pageNumber = start / number + 1;

        var parameters = {
            page: pageNumber,
            count: number
        };

        $http({
            method: 'GET',
            url: ctx + '/api/',
            params: parameters

        }).then(function successCallback(response) {
            $scope.data = response.data.content;
            tableState.pagination.numberOfPages = response.data.count;
        }, function errorCallback(response) {
            console.log("error");
        });
    }
});