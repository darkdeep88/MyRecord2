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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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

<script type="text/javascript">

$(document).ready(function(){ 

	$("#dailyboard_insert").click(function(){
				
		const user_no = $("#user_no").val();
		const title = $("#title").val();
		const content = $("#content").val();
		const start_date = $("#start_date").val();
		const last_date = $("#last_date").val();
		
		$.post('../dailyboard_Insert',{user_no,title,content,start_date,last_date},function(data){
			opener.parent.location.reload();
			window.close();					
			
		});	
		
		//window.close();
	});
	
	

	
});



</script>
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
       	  <li><a href="simpleBoard"><h3>Simple Todo</h3></a></li>
          <li><a href="dailyBoard"><h3>일상 등록</h3></a></li>
          <li><a><h3>업무 등록</h3></a></li>
          <li><a><h3>Side 3</h3></a></li>
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
      <h1>일상등록</h1><br>
      <div>
      	<!-- <button type="button" onclick="window.open('dailyboard_InsertForm', 'width=430,height=500');"  class="btn btn-primary" >등록</button>
      	 --><button type="button" onclick="window.open('dailyboard_InsertForm', '_blank', 'toolbar=yes,scrollbars=yes,resizable=yes,top=50,left=500,width=1000,height=450');"  class="btn btn-primary" >등록</button>
	  </div>
	  
	  <hr>
	  <c:forEach items="${list }" var="list">
	   <div id="formList" style="background-color:skyblue; border:3px solid black;">
	   
	   <script type="text/javascript">	   
			var box = document.getElementById("formList");			
			
			var today = new Date();
			var year = today.getFullYear(); // 년도
			var month = today.getMonth() + 1;  // 월
			var date = today.getDate();  // 날짜
			var chkdate = year + '-' + month + '-' + date;
			//var date1 = new Date(chkdate);
			//var date2 = new Date("${list.last_date}");
			var date1 = chkdate;
			var date2 = "${list.last_date}";
			//alert(date1==date2);
			
			if(date1 > date2){
				//alert("오늘날짜가 더 지남");
				//box.style.backgroundColor='red';
			}else if(date1 < date2) {
				//alert("종료일이 남음");
				//box.style.backgroundColor='skyblue';
				
			}
			
		</script>
	   
	   		<div class="form-group" style="margin:30px;">
				<label for="comment">제목</label> <input type="text" name="title" value="${list.title }" readonly="readonly" style="width:35%;">
				<label for="comment">시작일</label> <input type="date" name="start_date" value="${list.start_date }">
					  
				<label for="comment">종료일</label> <input type="date" name="last_date" value="${list.last_date }">
				<label for="comment">완료여부</label> <input type="checkbox" style="zoom:1.5;" name="chkboxNo" onclick="chbox(this);" value="${list.no }">
			</div>
			<div class="form-group" style="margin:30px;">
  				<label for="comment">내용</label>
  				<textarea class="form-control" cols="30" rows="5" name="content" readonly="readonly">${list.content }</textarea>
			</div>
			<div class="form-group" style="margin:30px;">		
  			<input type="button" class="btn btn-primary" value="수정" onclick="window.open('/dailyboard_UpdateForm?no=${list.no}', '_blank', 'toolbar=yes,scrollbars=yes,resizable=yes,top=50,left=500,width=1000,height=450');">
  			<input type="button" class="btn btn-primary" onclick="location.href='adminPage_MemberDelete?no=${list.no}'" value="삭제">
			</div>
	  </div>
	  <br>
	  </c:forEach>
	<div>
	  <hr>
	  	<table border="1" class="table table-striped">
	<thead>
	<tr>
		<th>user_no</th>
		<th>no</th>
		<th>title</th>
		<th>content</th>
		<th>check_run</th>
		<th>start_date</th>
		<th>last_date</th>
	</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${list }" var="list">
		<tr>
			<td>${list.user_no}</td>
			<td>${list.no}</td>
			<td>${list.title }</td>
			<td>${list.content}</td>
			<td>${list.check_run}</td>
			<td>${list.start_date}</td>
			<td>${list.last_date}</td>	
		</tr>
	</c:forEach>
	</tbody>
	</table>
	  </div>
	</main>
  </div>
</div>

<script type="text/javascript">
	
function chbox(box){
	
	const no = $("#chkboxNo").val();
	alert(no);
	if(box.checked==true){
		alert("체크");
		
	}else if(box.checked==false){
		alert("체크해제");
	}
};	


</script>

</body>
</html>