<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<!-- Bootstarp & Jquery -->
	<link rel="stylesheet" href="/bootstrap-3.3.7/dist/css/bootstrap.min.css">
	<script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<!-- FontAwesome -->
	<script src="/fontawesome-free-5.0.7/svg-with-js/js/fontawesome-all.js"></script>
	<link href="/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- Bootbox -->
	<script src="/js/bootbox.min.js"></script>
	<!-- Date Picker -->
	<link  href="/datepicker/datepicker.css" rel="stylesheet">
	<script src="/datepicker/datepicker.js"></script>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/css/global.css">
	<!-- JS -->
	<script src="/js/navbar/navbar.js"></script>
	
</head>
<body>
<input type="hidden" id="veiwType" name="veiwType" value="${veiwType}">
	<!-- navbar -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
	  	<div class="navbar-header">
	    	<a class="navbar-brand" href="/board/index">MeetingNote</a>
	  	</div>
	  	<ul class="nav navbar-nav">
	  		<c:choose>
			    <c:when test="${veiwType eq 'G'}">
			    	<li id="galleryVeiw" class="active cursor"><a><i class="fas fa-th"></i> Gallery</a></li>
						<li id="listVeiw" class="cursor"><a><i class="fas fa-list"></i> List</a></li>
			    </c:when>
			    <c:otherwise>
			    	<li id="galleryVeiw" class="cursor"><a><i class="fas fa-th"></i> Gallery</a></li>
						<li id="listVeiw" class="active cursor"><a><i class="fas fa-list"></i> List</a></li>
			    </c:otherwise>
				</c:choose>
			</ul>
			<ul class="nav navbar-nav navbar-right">
	  		<li><a class="cursor" data-toggle="modal" data-target="#loginModal">Login</a></li>
				<li><a class="cursor" data-toggle="modal" data-target="#newJoinModal">Join</a></li>
				<li><a class="cursor" href="#"><i class="fas fa-user-circle grayscale"></i> MyPage</a></li>
				<li><a class="cursor" href="/admin/config1"><i class="fas fa-cog grayscale"></i> Admin</a></li>
			</ul>
			
			<form class="navbar-form navbar-right" action="#">
	     	<div class="input-group stylish-input-group">
					<input type="text" class="form-control"  placeholder="Search" >
					<span class="input-group-addon">
				    <button type="submit">
			        <span class="glyphicon glyphicon-search"></span>
				    </button>  
					</span>
	      </div>
    	</form>
    	
		</div>
	</nav>
	
	<!-- Modal -->
	<jsp:include page="../member/join.jsp"></jsp:include>
	<jsp:include page="../member/login.jsp"></jsp:include>
</body>
</html>