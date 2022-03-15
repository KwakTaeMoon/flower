<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

function isVal(field) { //파라미터 필드를 넘겨준다.
	let isGood = false
	let errMsg
	
	if(!field.val()) errMsg = field.attr('text') + ' 입력하세요.' // 노동자 필드와 입사일 확인.
	else isGood = true
	}
	
	if(!isGood) { // err msg를 띄운다.
	   $('#modalMsg').text(errMsg).css('color', 'red')
	   $('#modalBtn').hide()
	   $('#modal').modal()
	}
	
	return isGood
}
	
function init() {
	$('#confirmBtn').click(() => {
		if($(''))
	})
}

</script>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
	<%@ include file='../include/header.jsp' %>
	
<h5 style='color:#0f56ba'><b>| 회원가입</b></h5><hr>
	<div class='col'>
		<table class='table table-borderless' id='classTop'>				
			<tbody>					
				<tr>
					<th style='width:100px;'><label for='userId' class='form-label'>아이디</label></th>
					<td>
						<input type='text' style='text-align:center; width:130px;' name='userId'/>
						<button type='button' class='btn btn-sm btn-secondary' id='confirmBtn' data-toggle='modal' data-target='#confirmModal'
							style='height:25px; text-align:center; font-size:10px; color:white;'>중복 확인</button>
					</td>					
				<tr>
					<th><label for='userPw' class='form-label'>비밀번호</label></th>
					<td>
						<input type='password' style='text-align:center;' name='userPw'/>
					</td>
				<tr>
					<th>이름</th>
					<td>
						<input type='text' style='text-align:center;' name='userName'/>
					</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>
						<input name='birth' type='date'/>
					</td></tr>	
				<tr>
					<th><span>이메일</span></th>
					<td>
						<input type='email' style='text-align:center;'/>
					</td>
				</tr>
				<tr>
					<th><span>연락처</span></th>
					<td>
						<input type='text' style='text-align:center;' placeholder='01012345678'/>
					</td>
				</tr>
				<tr>
					<th><span>주소</span></th>
					<td>
					<div class='row'>
						<div class='col'>
							<input type='number' id='zip' name='deliveryInformation' placeholder='(우편번호)' > &nbsp;
							<button type='button' name='deliveryInformation' class='btn btn-sm btn-outline-secondary'
								id='adressBtn' data-toggle='modal' data-target='#addressModal'>주소 찾기</button>
						</div>
					</div>
					<div class='row'>
						<div class='col'>
							<input type="text" name="deliveryInformation" style='width:80%' placeholder='(주소)' />
						</div>
					</div>
					<div class='row'>
						<div class='col'>
							<input type="text" name="deliveryInformation" style='width:80%' placeholder='(상세주소)' />
						</div>
					</div>
				</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="checkbox" class='ml-3 mt-2' id="terms" name="terms"/>
						<span style=font-size:10px;>약관에 동의합니다</span>
						<a href='../user/09.html'><button type='button' class='btn btn-sm btn-secondary'
							style='height:25px; text-align:center; font-size:10px; color:white;'>약관 보기</button></a>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button class='btn btn-outline-secondary'
							id='cancelBtn' data-toggle='modal' data-target='#cancelModal'>취소</button>
						<button type='submit' class='btn btn-secondary' id='joinConfirmBtn' data-dismiss='modal'
							data-toggle='modal' data-target='#completeModal'>회원가입</button>						
					</td>
				</tr>
			</tbody>				
		</table>
	</div>
</div>		
<!-- include modal -->
<div class='modal fade' tabindex='-1' id='modal'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p id='modalMsg'></p>
			</div>
			<div class='modal-footer' id='modalBtn'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
				<button type='button' class='btn btn-primary' id='delLaborerOkBtn'>예</button>
			</div>
		</div>
	</div>
</div>

<div id='confirmModal' class='modal fade' tabindex='-1'>
     <div class='modal-dialog'>
        <div class='modal-content'>
           <div class='modal-header'>
              <p class='modal-title'>아이디 중복 확인</p>
              <button type='button' class='close' data-dismiss='modal'><i class='fa fa-times'></i></button>
           </div>
         <div class='modal-body' align='center'>
         	<p>사용 가능한 아이디 입니다.</p>
            <button data-dismiss='modal' class='btn btn-outline-secondary'>확인</button>
         </div>
      </div>
   </div>
</div>

<div id='completeModal' class='modal fade' tabindex='-1'>
     <div class='modal-dialog'>
        <div class='modal-content'>
           <div class='modal-header'>
              <p class='modal-title'>회원가입</p>
              <button type='button' class='close' data-dismiss='modal'><i class='fa fa-times'></i></button>
           </div>
         <div class='modal-body' align='center'>
         	<p>가입이 완료 되었습니다.</p>
            <button data-dismiss='modal' class='btn btn-outline-secondary' onclick="location.href='../user/02.html'">확인</button>
         </div>
      </div>
   </div>
</div>


<div id='addressModal' class='modal fade' tabindex='-1'>
      <div class='modal-dialog' style='text-align: center;'>
         <div class='modal-content'>
            <div class='modal-header'>
               <p class='modal-title'>주소 찾기</p>
               <button type='button' class='close' data-dismiss='modal'><i class='fa fa-times'></i></button>
            </div>
            <div class='modal-body'>
               <input type='text' placeholder='예) 판교역로 235, 분당주공'> &nbsp; <button type='button' class='btn btn-secondary'>검색</button>
               <hr>
               <div class='row'>
               	<div class='col-2'>
                     <p>No</p>
                  </div>
                  <div class='col justify-content-center'>
                     <p>도로명주소</p>
                  </div>
                  <div class='col-3'>
                     <p>우편번호</p>
                  </div>
               </div>
               <div class='row'>
                  <div class='col-2'>
                     1
                  </div>
                  <div class='col d-flex justify-content-center'>
                     <a id='addrDetail'>경기도 고양시 일산동구 중앙로 <br>1193(장항동)</a>
                  </div>
                  <div class='col-3'>
                     10414
                  </div>         
               </div>
            </div>
         </div>
      </div>
   </div>
   
<div id='cancelModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<p class="modal-title float-left" id="myModalLabel">회원가입 취소</p>
				<button type='button' class='close' data-dismiss='modal'><i class='fa fa-times'></i></button>					
			</div>
			<div class='modal-body' align='center'>
				<p>회원 가입을 취소하시겠습니까?</p>
				<button data-dismiss='modal' class='btn btn-outline-secondary'
					onclick='location.href="../localhost"'>예</button>&emsp;&emsp;         	
				 <button type='button' data-dismiss='modal' class='btn btn-secondary'>아니오</button>         
			</div>
	      </div>
	 </div>
</div>
	
	
	
	
	
</div>
<%@ include file='../include/footer.jsp' %>