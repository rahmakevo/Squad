<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    import="com.rahmak.Squad.*"
    import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Heroes</title>

 <!-- Bootstrap -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">

<!-- CSS -->
<link rel="stylesheet" href="resources/css/master.css">

</head>
<body>

<%
DbManager db = new DbManager();

Squad squad = new Squad();

List<Squad> heroes = db.selectAll();
%>

<!-- Home Navigation bar -->
<nav class="navbar navbar-inverse navbar-static-top">
<div class="container-fluid">
<!-- Brand and toggle to get grouped for better mobile display -->
<button type="button" name="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a href="#" class="navbar-brand">Heroes Squad</a>
</div>

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">
Menu
<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>

<!-- Dropdown -->
<li><a href="#">Best Heroes</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
Best Heroes Kenya
</a>
<ul class="dropdown-menu">
<li><a href="#">Nairobi</a></li>
<li><a href="#">Mombasa</a></li>
<li><a href="#">Kisumu</a></li>
<li><a href="#">Nakuru</a></li>
<li><a href="#">Eldoret</a></li>
</ul>
</li>
</ul>
</div>
</nav>

<div class="row">
<div>
<a href="#" class="thumbnail">
<img src="resources/images/images.png">
</a>
</div>
</div>

<div class="container">
<table class="table">
<thead>
<tr class="active">
<td>Name</td>
<td>Age</td>
<td>Weakness</td>
<td>Strength</td>
</tr>
</thead>
<%
for(Squad hero:heroes) {
	%>
	<tbody>
	<tr class="success">
	<td><%=hero.getName() %></td>
	<td><%=hero.getAge() %></td>
	<td><%=hero.getWeakness() %></td>
	<td><%=hero.getStrength() %></td>
	</tr>
	</tbody>
	<%
}
%>
</table>
</div>

<nav class="navbar navbar-default" id="navbar">
<div class="container">
<p><span class="glyphicon glyphicon-heart" aria-hidden="true"></span> Made With Love In Kenya</p>
</div>
</nav>

<!-- jQuery (necessary for bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery.min.js" charset="utf-8"></script>

<!-- Include all compiled plugins(below), include individual files as well -->

<!-- Boostrap -->
<script src="resources/js/bootstrap.min.js" charset="utf-8"></script>

<!-- Fonts -->
<script src="resources/fonts/glyphicons-halflings-regular.eot" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.svg" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.ttf" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.woff" charset="utf-8"></script>
<script src="resources/fonts/glyphicons-halflings-regular.woff2" charset="utf-8"></script>
</body>
</html>