<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

</script>
<style>

</style>
<div class='container'>
<%@ include file='../include/headerAdmin.jsp' %>
	
<br><br><br><br>
      <h5 style='color:#0f56ba'><b>| 공지&nbsp;작성</b></h5>
   	  <div class='row'>
           <div class='col'>
           <f:form modelAttribute='notice' id='loginForm' method='post'>
			<input type='text' class='form-control' placeholder='제목을 입력해 주세요.'
			style='height:30; border:none;' minlength='3' id='title'/><hr>
			 <textarea placeholder='내용을 입력하세요.' style='width:100%' rows='15'  id='content'></textarea>
			</f:form>
			<div style='float:right; margin-top:10px;'>
				<button class='btn btn-outline-secondary btn-sm' id='cancelBtn'>취소</button>
				<button class='btn btn-outline-secondary btn-sm' id='registerBtn'>등록</button>
			</div>
		</div>
	</div>
</div>

<div id='cofirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<h5 id='modalTitle'>공지 작성</h5>
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p id='modalMsg'></p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-outline-secondary' data-dismiss='modal' id='yesBtn'>예</button>
				<button type='button' class='btn btn-secondary' data-dismiss='modal' id='noBtn'>아니오</button>
				<button type='button' class='btn btn-outline-secondary' data-dismiss='modal' id='okBtn'>확인</button>
			</div>
		</div>
	</div>
</div> 
<%@ include file='../include/footer.jsp' %>