<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>
$('#delBtn').click(() => {
	$('#confirmModal').modal('hide')
		$.ajax({
			url: 'del/' + $('#reviewNum:checked').val(),
			method: 'delete'
		}).done
})
</script>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
	<%@ include file='../include/header.jsp' %>
	<br><br><br><br>
	<div class='row'>
	     <h5 style='color:#0f56ba'><b>| 후기</b></h5>
	     <table class='table'>
	        <thead class='text-center'><tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th></tr></thead>
	        <c:forEach var="review" items="${reviewList}">
	        <tbody class='text-center'>
	           <tr><td>${review.reviewNum}</td><td>${review.title}</td><td>${review.userId}</td><td>${review.regDate}</td></tr>                   
			</tbody>
			</c:forEach>
		</table>
		<table class='table'>
			<c:forEach var="review" items="${reviewList}">
			<tr>
				<td><textarea style='width:100%' rows='15' readonly>${review.content}</textarea></td>
			</tr>
			</c:forEach>
			<tr>
				<td>
					<div style='float:right;'>
						<button type='button' id='listBtn' class='btn btn-outline-secondary btn-sm' 
							onclick="location.href='./listReview'">목록</button>
						<button type='button' id='delBtn' class='btn btn-outline-secondary btn-sm' 
							data-toggle='modal' data-target='#deleteModal'>삭제 </button>
						<button type='button' id='fixtBtn' class='btn btn-outline-secondary btn-sm' 
							onclick="location.href='./fixReview'">수정 </button>
					</div>
				</td>
			</tr>
		</table>
	</div>
</div>
<%@ include file='../include/footer.jsp' %>