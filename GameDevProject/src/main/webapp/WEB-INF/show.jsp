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
	    <title>[Game Title]</title>
	    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/css/style.css">
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
			<div class="d-flex align-items-center justify-content-around h-75 my-5" style="font-family: 'Press Start 2P';">
				<div class="h-100 w-50 d-flex flex-column align-items-center justify-content-around" id="gameTable">
					<div class="row mb-3">Language: ${game.language}</div>
					<c:choose>
						<c:when test="${game.multiplayer == true}">
							<div class="row mb-3">Co-Op? Yes!</div>
						</c:when>
						<c:otherwise>
							<div class="row mb-3">Co-Op? No</div>
						</c:otherwise>
					</c:choose>
					<div class="row mb-3">Genre: ${game.genre}</div>
				</div>
				<div class="h-25 w-25 d-flex align-items-center justify-content-center">
					<h1>${game.title}</h1>
				</div>
			</div>
		</div>
	</body>
</html>
