<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>
/*function init(){
	getList();
	
	$('#delBtn').click(() => {
		if(isVal($('#reviewNum:checked'))) {
			$('#bodyMsg').text('글을 삭제하시겠습니까?');
			$('#commonModal').modal();
		} 
	});
	
	$('#okBtn').click(() => {
		var delNum = $('#reviewNum:checked').val();
		alert($('#reviewNum:checked').val());
		$.ajax({
			url:`${pageContext.request.contextPath}/question/del/\${delNum}`,
			method: 'post'
		}).done(result => {
			if(result != null){
				getList();	
			}
		});
		$('#commonModal').modal('hide');
	});
}
$(init)*/



function init() {

$('#delBtn').click(() => {
   if(isVal($('#reviewNum:checked'))) {
      $('#modalMsg').text('글을 삭제하시겠습니까?')
      $('#modalBtn').show()
      $('#modal').modal()
   }
})

$('#delOkBtn').click(() => {
   $('#modal').modal('hide')
   $.ajax({
      url: 'review/del/' + $('#reviewNum:checked').val(),
      method: 'delete'
   }).done(listReview)
})

}

$(init)

</script>

<style>
<%@ include file ="../../../res/lib.css"%>
#reviewImg {
   width: 200px;
   height: 200px;
   border: 1px solid lightgrey;
   text-align: center;
   margin: 0 auto;
}
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
			<tr>
				<td style='border-bottom: hidden' align='center'><div id='reviewImg'><img>꽃 이미지</div></td>
			</tr>
			<c:forEach var="review" items="${reviewList}">
			<tr>
				<td>${review.content}</td>
			</tr>
			</c:forEach>
			<tr>
				<td>
					<div style='float:right;'>
						<button type='button' id='listBtn' class='btn btn-outline-secondary btn-sm' 
							onclick="location.href='./01.html'">목록</button>
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

<%@ include file='../include/footer.jsp' %>