<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    import="com.rahmak.Squad.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Squad</title>

 <!-- Bootstrap -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">

<!-- CSS -->
<link rel="stylesheet" href="resources/css/master.css">
    
</head>
<body>

<%
DbManager db = new DbManager();
String id = request.getParameter("id");
String name = request.getParameter("name");
String password = request.getParameter("password");
String age = request.getParameter("age");
String weakness = request.getParameter("weakness");
String strength = request.getParameter("strength");

String action = request.getParameter("action");
String create = "create";

Squad squad = new Squad();

if(create.equals(action)) {
	int mAge = Integer.parseInt(age);
	int mStrength = Integer.parseInt(strength);
	int mWeakness = Integer.parseInt(weakness);
	squad = new Squad(name, password, mAge, mWeakness, mStrength);
	db.create(squad);
}
%>

<!-- jumbotron header -->
<div class="jumbotron">
<h1 class="text-center">Hello, Hero</h1>
<p class="text-center">This is a simple Hero Application, a simple jumbotron-style component for calling extra attention to featured content or information</p>
<p class="text-center"><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
</div>

<div class="row">
<div class="col-sm-6 col-md-6">
<div class="thumbnail">
<img alt="EPL" src="resources/images/images.png">
<h3>Premier League Squad</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">View Hero</a>
</p>
</div>
</div>

<div class="col-sm-6 col-md-6">
<div class="thumbnail">
<img alt="METFONE LEAGUE" src="resources/images/images2.jpg">
<h3>Metafone League Squad</h3>
<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
<p><a href="#" class="btn btn-primary" role="button">View Hero</a></p>
</div>
</div>
</div>

<div class="container">
<form action="Heroes.jsp">

<div class="form-group">
<label for="name">Enter Hero Name: </label>
<input type="text" class="form-control" name="name" placeholder="Name">
</div>

<div class="form-group">
<label for="password">Enter Hero Password: </label>
<input type="password" class="form-control" name="password" placeholder="Password">
</div>

<div class="form-group">
<label for="age">Enter Hero Age: </label>
<select class="form-control" name="age">
  <option>11</option>
  <option>12</option>
  <option>13</option>
  <option>14</option>
  <option>15</option>
</select>
</div>

<div class="form-group">
<label for="weakness">Enter Hero Weakness: </label>
<select class="form-control" name="weakness">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select>
</div>

<div class="form-group">
<label for="strength">Enter Hero Strength: </label>
<select class="form-control" name="strength">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select>
</div>

<div>
<button class="btn btn-success btn-lg" name="action" value="create">Save Hero</button>
</div>
</form>
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