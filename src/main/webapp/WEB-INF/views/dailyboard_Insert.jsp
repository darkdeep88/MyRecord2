<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- jQuery library -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>일상등록</title>
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
	<form action="dailyboard_Insert" id="insertForm" name="dailyInsert_Form" style="border:3px solid black; width:100%;">
		 
		  <h2>게시물 등록 ${member.name }</h2>
		  <input type="hidden" name="user_no" id="user_no" value=${member.no }>		  
		  <select class="form-control" style="background-color:skyblue;">
			 <option>일상등록</option>
	 		 <option>업무등록</option>
	 		 <option>버킷리스트</option>
	 		 <option>4</option>
			  <option>5</option>
		  </select>
		<div class="form-group" style="margin:30px;">
			<label for="comment">제목</label> <input type="text" name="title" id="title" style="width:35%;">
			<label for="comment">시작일</label> <input type="date" name="start_date" id="start_date">
			<label for="comment">종료일</label> <input type="date" name="last_date" id="last_date">
		</div>
		<div class="form-group" style="margin:30px;">
  			<label for="comment">내용</label>
  			<textarea class="form-control" cols="30" rows="5" name="content" id="content"></textarea>
		</div>
		<div class="form-group" style="margin:30px;">
  			<input type="button" id="dailyboard_insert" class="btn btn-primary" value="저장">
  			<input type="button" class="btn btn-primary" value="나가기">
		</div>	
	</form>



	
	
	
</body>
</html>