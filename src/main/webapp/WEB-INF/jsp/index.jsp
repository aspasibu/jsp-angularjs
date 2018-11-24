<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="mainModule">
<head>
    <link rel="stylesheet" href="css/bootstrap.css">
    <%--<link rel="stylesheet" href="js/smart-table/pagination.css">--%>
    <script>
        var ctx = "${pageContext.request.contextPath}";
    </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="js/angular.min.js"></script>
    <script src="js/smart-table/smart-table.min.js"></script>
    <script src="js/app.js"></script>
</head>
<body>

<div>
    <label>Name:</label>
    <input type="text" ng-model="yourName" placeholder="Enter a name here">
    <hr>
    <h1>Hello {{yourName}}!</h1>
</div>
<div class="panel panel-default" ng-controller="mainController">
    <div st-table="data" st-pipe="callServer">
        <table class="table table-bordered table-striped table-hover smart-table">
            <thead class="thead-default">
            <tr>
                <th>id</th>
                <th>data</th>
            </tr>
            </thead>
            <tbody>
            <tr ng-repeat="row in data">
                <td data-title="id">{{row.id}}</td>
                <td data-title="id">{{row.data}}</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <td class="text-center" st-pagination="" st-items-by-page="10" colspan="2">
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
</body>


</html>