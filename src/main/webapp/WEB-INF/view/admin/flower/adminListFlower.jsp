<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<title>TAEMOON Flower</title>
<%@ include file ='../include/lib.jsp'%>

<script>
function listFlowers() {
	$('#flowers').empty()
	
	$.ajax({
		method: 'post',
		url: "<%=request.getContextPath() %>/admin/flower/adminListFlower"
	}).done(flowers => {
		if(flowers.length) {
			const flowerArr = []
	
			$.each(flowers, (i, flower) => {
				flowerArr.unshift(
					`<tr>
						<td> 
							<input type='checkbox' value='\${flower.flowerNum}' name='flowerNum' id='flowerNum'/>
						</td>
						<td>
						\${flower.flowerNum}</td>
						<td><a href='/admin/flower/adminDetailFlower?flowerName=\${flower.flowerName}'>\${flower.flowerName}</a></td>
						<td>\${flower.price}</td>
						<td>\${flower.regDate}</td>
					</tr>`
				);
			})
	
			$('#flowers').append(flowerArr.join(''))
		} else {
			$('#flowers').append('<tr><td colspan=6 class=text-center>등록한 꽃이 없습니다.</td></tr>')
		}
	})
}

function init() {
	$(listFlowers)
	$('#delBtn').click(() => {
		if($('#flowerNum:checked').val()) {
			$('#modalMsg').text('꽃을 삭제하시겠습니까?');
			$('#confirmModal').modal();
		} else {
			$('#modalMsg').empty();
			$('#modalMsg').text('꽃을 선택해주세요.');
			$('#confirmModal').modal();
			$('#noBtn').hide();
		}
	})
	$('#okBtn').click(() => {
		$('#confirmModal').modal('hide')
			$.ajax({
				url: 'adminDel/' + $('#flowerNum:checked').val(),
				method: 'delete'
			}).done(listFlowers)
	})
	
	$('#fixBtn').click(() => {
		if($('#flowerNum:checked').val()) {
		} else {
			$('#modalTitle').text('꽃 수정');
			$('#modalMsg').text('꽃을 선택해주세요.');
			$('#confirmModal').modal();
			$('#noBtn').hide();
		}
	})
	
}

$(init)
</script>
<style>
<%@ include file ="../../../../res/lib2.css"%>

#searchbtn {
	margin: auto;
	display: block;
}
.bold {
	font-weight: bold;
}

#ProductTable {
	margin-left:auto; 
    margin-right:auto;
}

#ProductList { 
	top:0; 
	bottom:0; 
	left:0; 
	right:0; 
	margin:auto; 
	height:auto; 
}
</style>
<div class='container-fluid'>
	<%@ include file='../include/header2.jsp' %>
</div>	<br><br>


	<div class='row'>
		<div class='col-2' id="adminBorder">
			<table class='table table-bordered mt-3 text-center'>
				<thead>
					<tr>
						<th><i class="fa fa-gift" style='color:#0f56ba; font-size:100px'></i></th>
					</tr>
					<tr style='background-color:#b1c3e0;'>
						<th>꽃 관리</th>
					</tr>
				</thead>
				<tbody id='noticeBorder' class='table-borderless'>
					<tr><td></td></tr>
					<tr>
						<td><a href='./adminListFlower' style='color:black; font-weight: bold'>꽃 조회</a></td>
					</tr>
					<tr>
						<td><a href='./addFlower' style='color:black'>꽃 등록</a></td>
					</tr>
					<tr><td></td></tr>
				</tbody>
			</table>
		</div> 
		
		<div class='col-8 mt-3' id='ProductList'>
			<h5 style='color:#0f56ba'><b>| 꽃 조회</b></h5>
			<hr>
			<table class='table table-borderless' id='classTop'>				
				<tbody>					
					<tr>
						<th>
							<select name='search' class='text-center col-8'>
								<option value='productName'>꽃 이름</option>
								<option value='productPrice'>가격</option>
							</select>
						</th>
						<td><input type='text' style='width:70%' class='col-8'></td>					
					<tr>
						<th>
							<select name='search' class='text-center col-8'>
								<option value='ProductCode'>기간</option>
							</select>
						</th>
						<td>
							<input type="date" name="startDate" id="startDate">
							~
							<input type="date" name="endDate" id="endDate">
						</td>
						<td>
						</td>
					</tr>
				</tbody>
			</table>	
          <div class='col'>
			<button class='btn btn-outline-secondary' id='searchbtn'>검색</button>
			<hr>
		</div>
		<div class='col'>
			<h5 style='color:#0f56ba'><b>| 목록</b></h5>
		<div class='row'>
			<div class='col-10 mb-3'>
				<button class='btn btn-outline-secondary float-right ' id='delBtn'>삭제</button>
				<button class='btn btn-outline-secondary  float-right  mr-2' id='fixBtn' >수정</button>
			</div>
		</div>
		
		<div class='row'>
			<div class='col-10'>
				<table class='table table-bordered text-center' id='ProductTable'>
					<thead style='background-color:#b1c3e0'>
						<tr>
							<th></th><th>번호</th><th>꽃 이름</th><th>가격</th><th>등록일</th>
						</tr>
					</thead>
					<tbody id='flowers'>
					</tbody>
				</table>
			</div>
			</div>
		</div>
	</div>
</div><br><br>

<div id='confirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<h5 id='modalTitle'>꽃 삭제</h5>
				<button type='button' class='close' data-dismiss='modal'>
					<span>&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<p id='modalMsg'></p>
			</div>
			<div class='modal-footer'>
				<button type='button' class='btn btn-secondary' data-dismiss='modal' id='noBtn'>아니오</button>
				<button type='button' class='btn btn-outline-secondary' data-dismiss='modal' id='okBtn'>확인</button>
			</div>
		</div>
	</div>
</div>
<%@ include file='../include/footer.jsp' %>