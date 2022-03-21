<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>

</script>
<style>
li {
	margin-top: 1rem;
}
</style>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
<%@ include file='../include/header.jsp' %>
	<!-- 로그인 하지 않았을 때 -->
	<c:if test="${empty sessionScope.userId}">
	<br><br><br><br>
	<div class='col'>
		<h5 style='color:#0f56ba'><b>| My Page</b></h5>
	</div>
	<hr><br><br>
			<div class='text-center'>
				<h5 style='text-align:center'><b>권한이 없습니다.</b></h5>
			</div>
			<div class='row d-flex justify-content-center'>
				<button type="button" class="btn btn-outline-secondary m-5 d-flex justify-content-center"
					onclick="location.href='<%=request.getContextPath() %>/user/login'">로그인으로</button>
			</div>
	</c:if>
	<!-- 로그인 했을 때 -->
	<c:if test="${not empty sessionScope.userId}">
	<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5 style='color:#0f56ba'><b>| My Page</b></h5>
			<ul>
				<li><a href='<%=request.getContextPath() %>/order/03.html' style='color:black'> 구매내역</a></li>
				<li><a href='<%=request.getContextPath() %>/review/01.html' style='color:black'> 후기 남기기</a></li>
			</ul>
		</div>
	</div>
	
	<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5 style='color:#0f56ba'><b>| 회원정보 수정</b></h5>
			<table class='table table-borderless' id='classTop'>				
				<tbody>					
					<tr>
						<th style='width:100px;'><label for='userId' class='form-label'>아이디</label></th>
						<td><p>${userId}</p></td>					
					<tr>
						<th style='width:100px;'><label for='userId' class='form-label'>비밀번호 </label></th>
						<td>
							<a href='<%=request.getContextPath() %>/user/fixPw'><button type='button' class='btn btn-sm btn-secondary' 
							style='height:2rem; text-align:center; font-size:1rem; color:white;'>비밀번호수정</button></a>
						</td>
					<tr>
						<th>이름</th>
						<td><p>${user.userName}</p></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>${user.birthday}</td>
					</tr>	
					<tr>
						<th><span>이메일</span></th>
						<td>
							<input type='email' style='text-align:center;' value='${user.email}'/>
							<button type='button' class='btn btn-sm btn-secondary' 
							style='height:2rem; text-align:center; font-size:1rem; color:white;'>이메일 수정</button>
						</td>
					</tr>
					<tr>
						<th><span>연락처</span></th>
						<td>
							<input type='text' style='text-align:center;' value='${user.contactNum}'/>
							<button type='button' class='btn btn-sm btn-secondary' 
							style='height:2rem; text-align:center; font-size:1rem; color:white;'>연락처 수정</button>
						</td>
					</tr>
					<tr>
						<th><span>주소</span></th>
						<td>
						<div class='row'>
							<div class='col'>
								<input type='number' id='zip' name='deliveryInformation' value='${user.postcode}}'> &nbsp;
								<button type='button' name='deliveryInformation' class='btn btn-sm btn-outline-secondary'
									data-toggle='modal' data-target='#addressModal'>주소 찾기</button>
							</div>
						</div>
						<div class='row'>
							<div class='col'>
								<input type="text" name="deliveryInformation" style='width:100%' value='${user.addr}'/>
							</div>
						</div>
						<div class='row'>
							<div class='col'>
								<input type="text" name="deliveryInformation" style='width:100%' value='${user.detailAddr}'/>
							</div>
						</div>
						<div class='row justify-content-center mt-2 float-right'>
							<div class='col'>
								<button type='button' class='btn btn-sm btn-secondary' 
							style='height:2rem; text-align:center; font-size:1rem; color:white;'>주소 수정</button>
							</div>
						</div>
					</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<hr>
	<div class='row d-flex justify-content-center mt-2 float-right'>
		<div class='col'>				
			<a href='../user/07.html'><button type='submit' class='btn btn-secondary sm-btn' >회원탈퇴</button></a>						
		</div>
	</div>
	</c:if>
	<br><br><br>
</div>
<%@ include file='../include/footer.jsp' %>