<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
.bd-navbar {
  position: sticky;
  top: 0;
  z-index: 1071;
  min-height: 4rem;
  box-shadow: 0 0.5rem 1rem rgba(0,0,0,.05), inset 0 -1px 0 rgba(0,0,0,.1);
}
.bd-sidebar {
  position: sticky;
  top: 4rem;
  z-index: 1000;
  height: calc(100vh - 4rem);
  background: #eee;
  border-right: 1px solid rgba(0,0,0,.1);
  max-width: 220px;
  display: flex;
  padding: 0;
  overflow-y: hidden;
  flex-direction: column;
}
.bd-sidebar-body {
  height: 100%;
  overflow-y: auto;
  display: block;
}
.bd-sidebar-body .nav {
  display: block;
}
.bd-sidebar-body .nav>li>a {
  display: block;
  padding: .25rem 1.5rem;
  font-size: 90%;
}
.bd-sidebar-footer {
  padding: 1rem;
  background: #ddd;
}
</style>
</head>
<body>
<header class="navbar navbar-expand navbar-dark bg-dark bd-navbar">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active"><a class="nav-link" href="#">홈</a></li>
      <li class="nav-item"><a class="nav-link" href="#">개인정보</a></li>
      <li class="nav-item"><a class="nav-link" href="#">2번 메뉴</a></li>	
      <li class="nav-item"><a class="nav-link" href="#">3번 메뉴</a></li>
    </ul>
  </div>
  <div class="collapse navbar-collapse" id="navbarNav">
  	<ul class="navbar-nav">
      <li class="nav-item active"><a class="nav-link" href="#">${member.name }님 환영합니다.</a></li>
      <li class="nav-item active"><button type="button" class="btn btn-link" onclick="location.href='logout'">로그아웃</button></li>
     </ul>
  </div>


</header>

<div class="container-fluid">
  <div class="row flex-nowrap">
    <div class="col-3 bd-sidebar">
      <div class="bd-sidebar-body">
        <ul class="nav">
       		<br>
       	  <li><a><h3>DashBoard</h3></a></li>
       	  <li><a href="simpleTodo"><h3>Simple Todo</h3></a></li>
          <li><a href="dailyBoard"><h3>일상 등록</h3></a></li>
          <li><a><h3>업무 등록</h3></a></li>
   		  <li><a><h3>Side 4</h3></a></li>
          <li><a><h3>Side 5</h3></a></li>
          <li><a><h3>Side 6</h3></a></li>
          <li><a><h3>Side 7</h3></a></li>
          <li><a><h3>Side 8</h3></a></li>
        </ul>
        <br>
      </div>
      <div class='bd-sidebar-footer'>
        Sidebar Footer
      </div>
    </div>
    <main class="col-9 py-md-3 pl-md-5 bd-content" role="main">
      <h1>Main 1 ${memberVO.id}</h1>
      <h1>Main 2 ${memberVO.pw}</h1>
      <h1>Main 3 ${member.no}</h1>
      <h1>Main 4 ${member }</h1>
      <h1>Main 5</h1>
      <h1>Main 6</h1>
      <h1>Main 7</h1>
      <h1>Main 8</h1>
      <h1>Main 9</h1>
    </main>
  </div>
</div>


</body>
</html>