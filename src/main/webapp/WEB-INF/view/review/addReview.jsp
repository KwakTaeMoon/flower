<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>


function init() {
	let title = $('#title').val();
	let content = $('#content').val();
	$('#registerBtn').click(() => {
		if($('#title').val()) {
			$.ajax({
				url: '${pageContext.request.contextPath}/review/addReview',
				type: 'post',
				data: {
					title: $('#title').val(),
					content: $('#content').val()
				}
			}).done(reviews => {
				$('#modalTitle').text('후기 작성');
				$('#modalMsg').text('글이 등록되었습니다.');
				$('#cofirmModal').modal();
				$('#noBtn').hide();
				$('#okBtn').hide();
			})
			}else {
				$('#modalTitle').text('후기 작성');
				$('#modalMsg').text('후기를 입력해 주세요.');
				$('#cofirmModal').modal();
				$('#completeOkBtn').hide();
				$('#noBtn').hide();
			}
	})
	
	$('#completeOkBtn').click(() => {
		location.href='./listReview'
	})
}  

$(init)
</script>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
	<%@ include file='../include/header.jsp' %>
<br><br><br><br>
      <h5 style='color:#0f56ba'><b>| 후기&nbsp;작성</b></h5>
   	  <div class='row'>
           <div class='col'>
           <f:form modelAttribute='review' id='loginForm' method='post'>
			<input type='text' class='form-control' placeholder='제목을 입력해 주세요.'
			style='height:30; border:none;' minlength='3' id='title'/><hr>
			 <textarea placeholder='내용을 입력하세요.' style='width:100%' rows='15'  id='content'></textarea>
			<input type='file' multiple style='margin-top:10px' id='imgFileName'/>
			</f:form>
			<div style='float:right; margin-top:10px;'>
				<button class='btn btn-outline-secondary btn-sm' id='cancelBtn' 
					data-toggle='modal' data-target='#cancelModal'>취소</button>
				<button class='btn btn-outline-secondary btn-sm' id='registerBtn' 
					data-toggle='modal' data-target='#registerModal'>등록</button>
			</div>
		</div>
	</div>
</div>

<div id='cofirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<h5 id='modalTitle'></h5>
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p id='modalMsg'></p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal' id='noBtn'>아니오</button>
				<button type='button' class='btn btn-outline-secondary' data-dismiss='modal' id='completeOkBtn'>확인</button>
				<button type='button' class='btn btn-outline-secondary' data-dismiss='modal' id='okBtn'>확인</button>
			</div>
		</div>
	</div>
</div>
<%@ include file='../include/footer.jsp' %>