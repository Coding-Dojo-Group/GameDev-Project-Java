<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <title>New Game</title>
	    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/css/style.css">
		<link href='https://fonts.googleapis.com/css?family=Press Start 2P' rel='stylesheet'>	
	    <script src="/webjars/jquery/jquery.min.js"></script>
	    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</head>
	<body id="newBackground">		
		<div class="container vh-100">
			<nav class="navbar navbar-expand-xl navbar-dark">
				<div class="container-fluid">
					<a href="/home" class="navbar-brand">DGS</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarBasic" aria-controls="navbarBasic" aria-expanded="false" aria-label="Toggle navigation">
      					<span class="navbar-toggler-icon"></span>
    				</button>
   					<div class="collapse navbar-collapse" id="navbarBasic">
      					<ul class="navbar-nav me-auto mb-2 mb-xl-0 offset-7">
        					<li class="nav-item">
          						<a class="nav-link" aria-current="page" href="/games">Your Games</a>
        					</li>
        					<li class="nav-item">
        						<a class="nav-link" href="/games/community">Community</a>
        					</li>
        					<li class="nav-item">
        						<a class="nav-link" href="/aboutUs">About Us</a>
        					</li>
        					<li class="nav-item">
        						<a class="nav-link" href="/logout">Logout</a>
        					</li>
        				</ul>
        			</div>
				</div>
			</nav>
			<div class="d-flex align-items-center justify-content-around h-75 my-5">
				<div class="h-25 w-50 d-flex align-items-center justify-content-center" style="font-family: 'Press Start 2P';">
					<h1>New Game</h1>
				</div>
				<div class="h-100 w-50 d-flex align-items-center justify-content-center" id="gameTable">
					<form>
						<div class="row mb-3">
						    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="inputEmail3">
						    </div>
						  </div>
						  <div class="row mb-3">
						    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
						    <div class="col-sm-10">
						      <input type="password" class="form-control" id="inputPassword3">
						    </div>
						  </div>
						  <fieldset class="row mb-3">
						    <legend class="col-form-label col-sm-2 pt-0">Radios</legend>
						    <div class="col-sm-10">
						      <div class="form-check">
						        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked="">
						        <label class="form-check-label" for="gridRadios1">
						          First radio
						        </label>
						      </div>
						      <div class="form-check">
						        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
						        <label class="form-check-label" for="gridRadios2">
						          Second radio
						        </label>
						      </div>
						      <div class="form-check disabled">
						        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled="">
						        <label class="form-check-label" for="gridRadios3">
						          Third disabled radio
						        </label>
						      </div>
						    </div>
						  </fieldset>
						  <div class="row mb-3">
						    <div class="col-sm-10 offset-sm-2">
						      <div class="form-check">
						        <input class="form-check-input" type="checkbox" id="gridCheck1">
						        <label class="form-check-label" for="gridCheck1">
						          Example checkbox
						        </label>
						      </div>
						    </div>
						  </div>
						<button type="submit" class="btn btn-primary">Sign in</button>
					</form>
				</div>
			</div>
			
		</div>
	</body>
</html>
