<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>

<%@ include file ='../include/lib.jsp'%>

<script>
function listFlowers() {
	$('#flowers').empty()

	$.ajax({
		method: 'post',
		url: "<%=request.getContextPath() %>/admin/flower/listFlower"
	}).done(flowers => {
		if(flowers.length) {
			const flowerArr = []
	
			$.each(flowers, (i, flower) => {
				flowerArr.unshift(
					`
					<div class='col text-center'>
						<div><img style="width:150px; height:150px;"src='<c:url value="/attach/\${flower.flowerImgfileName}"/>'/></div>
						<p>\${flower.flowerName}\${flower.kind}<br><small>\${flower.price}&nbsp;<span class='badge badge-primary'>\${flower.flowerCategory}</span></small></p>		
					</div>`
				);
			})
	
			$('#flowers').append(flowerArr.join(''))
		} else {
			$('#flowers').append('<tr><td colspan=6 class=text-center>등록한 꽃이 없습니다.</td></tr>')
		}
	
	})

}
$(listFlowers)
</script>
<style>
<%@ include file ="../../../res/lib.css"%>
</style>
<div class='container'>
<%@ include file='../include/header.jsp' %><br><br><br><br>
	<c:if test='${flower.kind == "꽃다발"}'>
		<h5 style='color: #0f56ba;'><b>|${flower.kind} </b></h5><hr><br>
	</c:if>

	<div class='row'  id='flowers'>
	</div>
	<br><br><br><br>
</div>
<%@ include file='../include/footer.jsp' %>