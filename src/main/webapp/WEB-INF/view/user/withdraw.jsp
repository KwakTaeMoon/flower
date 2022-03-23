<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>
	var result = '${result}';
	
	if(result === "removeFalse") {
		$('#withdrawModalMsg').text('비밀번호를 확인해주세요.')
		$('#withdrawBackBtn').show()
		$('#withdrawOkBtn').hide()
		$('#withdrawNOBtn').hide()
		$('#withdrawModal').modal()
	}

function init() {
	$('#withdrawBtn').click(() => {
		
			$('#withdrawModalMsg').text('회원탈퇴 하시겠습니까?')
			$('#withdrawBackBtn').hide()
			$('#withdrawOkBtn').show()
			$('#withdrawNOBtn').show()
			$('#withdrawModal').modal()
		
	})
	
	$('withdrawOkBtn').click(() => {
		$('#withdrawModal').modal('hide')
		$.ajax({
			url: 'user/withdraw/' + $('userId').val(),
			method: 'delete'
		})
	})
}

$(init);
</script>
<style>
<%@ include file ="../../../res/lib.css"%>
h5 {
	color: #0f56ba;
}
</style>
<div class='container'>
<%@ include file='../include/header.jsp' %>
		<br><br><br><br>  
   	<h5><strong>&nbsp;&nbsp;&nbsp;| 회원 탈퇴</strong></h5><hr><br>
	 <div class='row mb-5'>
		<div class='col'>
			<div class='row ml-3'>
				<p>＊ 회원탈퇴 본인 인증을 위해 비밀번호를 입력해주세요.</p> 
			</div>
		</div>
	</div>
	<form method='post' autocomplete='off'>
 	<div class='form-group row mb-5 justify-content-center'>
 		
 		<label for='userId' class='col-3 col-form-label text-center'>아이디 </label>
		<div class='row d-flex justify-content-center'>
			<input type='text' class='form-control' id='userId' name='userId' value='${userId}' readonly/>
		</div>
		
 	
		<label for='userPw' class='col-3 col-form-label text-center'>비밀번호 </label>
		<div class='row d-flex justify-content-center'>
			<input type='password' class='form-control' id='userPw' name='userPw' required/>
		</div>
		<div class='row d-flex justify-content-center'>
			<button class="btn btn-outline-secondary m-5 d-flex justify-content-center" 
								id='cancelBtn' data-toggle='modal' data-target='#cancelModal'>취소</button>
			<button type="submit" id='withdrawBtn' class="btn btn-outline-secondary m-5 d-flex justify-content-center"
				>회원탈퇴 신청</button>
		</div>
	</div>
	</form>
</div>

<div id='cancelModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<p class="modal-title float-left" id="myModalLabel">회원탈퇴 취소</p>
				<button type='button' class='close' data-dismiss='modal'><i class='fa fa-times'></i></button>					
			</div>
			<div class='modal-body' align='center'>
				<p>회원탈퇴를 취소하시겠습니까?</p>
				<button data-dismiss='modal' class='btn btn-outline-secondary'
					onclick='location.href="<%=request.getContextPath() %>/user/myPage"'>예</button>&emsp;&emsp;         	
				 <button type='button' data-dismiss='modal' class='btn btn-secondary'>아니오</button>         
			</div>
	      </div>
	 </div>
</div>

<div id='withdrawModal' class='modal fade' tabindex='-1'>
     <div class='modal-dialog'>
        <div class='modal-content'>
           <div class='modal-header'>
              <p class='modal-title'>회원탈퇴</p>
              <button type='button' class='close' data-dismiss='modal'><i class='fa fa-times'></i></button>
           </div>
         <div class='modal-body' align='center'>
         	<p id='withdrawModalMsg'></p>
         </div>
         <div class='modal-footer' id='modalBtn'>
         	<button type='button' class='btn btn-outline-secondary' data-dismiss='modal' id='withdrawBackBtn'>확인</button>
            <button type='button' class='btn btn-outline-secondary' id='withdrawOkBtn'>예</button>
			<button type='button' class='btn btn-outline-secondary' id='withdrawNoBtn' data-dismiss='modal'>아니오</button>
         </div>
      </div>
   </div>
</div>
<%@ include file='../include/footer.jsp' %>