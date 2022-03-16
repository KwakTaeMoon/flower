<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

</script>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
	<%@ include file='../include/header.jsp' %>
	
<h5 style='color:#0f56ba'><b>| 아이디 찾기</b></h5><hr><br>
		<div class='row justify-content-center'>
			<label for='userName' class='col-form-label'>이름&emsp;&emsp;&emsp;</label>
			<div class='col-7'>
				<input type='text' class='form-control' id='userName' name='userName' required/>
			</div>
		</div><br>
		<div class='row justify-content-center'>
			<label for='userTel' class='col-form-label'>연락처&emsp;</label>
			<div class='col-7'>
				<input type='text' class='form-control' id='userTel' name='userTel' required/>
			</div>
		</div><br>
		 <div class='row justify-content-around'>
			<button type='button' class='btn btn-secondary' onclick='location.href="./03.html"'
				style='width:120' id='loginBtn'>로그인</button>					
			<button type='button' class='btn btn-secondary'
				style='width:120' id='loginConfirmBtn' data-toggle='modal' data-target='#confirmModal'>아이디 확인</button>		
		</div><br>
	<div class='row' style='height:200px'></div>
</div>
<%@ include file='../include/footer.jsp' %>