<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='f' uri='http://www.springframework.org/tags/form' %>
<title>TAEMOON Flower</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<%@ include file ='../include/lib.jsp'%>

<script>
window.onload = function() {
    if(!window.location.hash) {
        window.location = window.location + '#loaded';
        window.location.reload();
    }
}

function constrainRecContactNum(text){
	if(text.length == 11){
		return true;
	} else {
		return false;
	}
}

function searchAddr(){
	   daum.postcode.load(function(){
	      new daum.Postcode({
	         oncomplete:function(data){
	            $('[name=recPostCode]').val(data.zonecode); 
	            $('[name=recAddr]').val(data.address);
	            $('[name=recDetailAddr]').val(data.buildingName);
	         }
	      }).open();
	   })
	}

function init() {

	$('#searchAddr').click(() => {
		searchAddr();
	})	
	
$('#purchaseBtn').click(() => {
	let recName = $('#recName').val();
	let recContactNum = $('#recContactNum').val();
	let recPostCode = $('#recPostCode').val();
	let recAddr = $('#recAddr').val();
	let recDetailAddr = $('#recDetailAddr').val();
	let hopeDeliDate = $('#hopeDeliDate').val();
	let request = $('#request').val();
	let payment = $('#payment:checked').val();
	let flowerNum = $('#flowerNum').val();
	let amount = $('#amount').val();
	let terms = $('#terms:checked').val();
	if(recName){
		if(recContactNum) {
			if(recPostCode) {
				if(recAddr) {
					if(recDetailAddr) {
						if(hopeDeliDate) {
							if(payment) {
								if(terms) {
										$.ajax({
											url: '${pageContext.request.contextPath}/order/addOrder',
											type: 'post',
											data: {
												recName: recName,
												recContactNum: recContactNum,
												recPostCode: recPostCode,
												recAddr: recAddr,
												recDetailAddr: recDetailAddr,
												hopeDeliDate: hopeDeliDate,
												request: request,
												payment: payment,
												amount: amount,
												flowerNum: flowerNum
											}
										}).done(orders => {
											location.href='./successOrder'
										})
									}else {
										$('#modalMsg').empty();
										$('#modalMsg').text('약관에 동의해주세요.');
										$('#cofirmModal').modal();
										$('#okBtn').show();
										$('#noBtn').hide();
									}
								}else {
									$('#modalMsg').empty();
									$('#modalMsg').text('결제방법을 선택해주세요.');
									$('#cofirmModal').modal();
									$('#okBtn').show();
									$('#noBtn').hide();
								}
							}else {
								$('#modalMsg').empty();
								$('#modalMsg').text('희망 배송지를 입력하세요.');
								$('#cofirmModal').modal();
								$('#okBtn').show();
								$('#noBtn').hide();
							}
						}else {
							$('#modalMsg').empty();
							$('#modalMsg').text('상세주소를 입력하세요.');
							$('#cofirmModal').modal();
							$('#okBtn').show();
							$('#noBtn').hide();
						}
					}else {
						$('#modalMsg').empty();
						$('#modalMsg').text('기본주소를 입력하세요.');
						$('#cofirmModal').modal();
						$('#okBtn').show();
						$('#noBtn').hide();
					}
				}else {
					$('#modalMsg').empty();
					$('#modalMsg').text('우편번호를 입력하세요.');
					$('#cofirmModal').modal();
					$('#okBtn').show();
					$('#noBtn').hide();
				}
			}else {
				$('#modalMsg').empty();
				$('#modalMsg').text('수령인 연락처를 입력하세요. (-를 제외 11자리)');
				$('#cofirmModal').modal();
				$('#okBtn').show();
				$('#noBtn').hide();
			}
		}else {
			$('#modalMsg').empty();
			$('#modalMsg').text('수령인명을 입력하세요.');
			$('#cofirmModal').modal();
			$('#okBtn').show();
			$('#noBtn').hide();
		}
	})
}  
$(init)
</script>
<style>
<%@ include file ="../../../res/lib.css"%>
table {
	width: 100%;
	border-collapse: collapse;
	text-align: center;
	border: 1px solid lightgray;
}

th {
	border: 1px solid lightgray;
	padding: 15px;
}

td {
	border: 1px solid lightgray;
	padding: 15px;
}

table.type1 {
    width: 100%;
    border-collapse: collapse;
    text-align: left;
    border-bottom: 1px solid #444444;
    border-top: 1px solid #444444;
}

table.type1 th {
  font-weight: bold;
  vertical-align: center;
  width: 150px;
}

table.type2 {
	width: 50%;
    border-collapse: collapse;
    text-align: left;
    border-bottom: 1px solid #444444;
    border-top: 1px solid #444444;
}
        
textarea {
    width: 100%;
    height: 5rem;
    resize: none;
  }
</style>
<div class='container'>
	<%@ include file='../include/header.jsp' %>
	<br><br><br>
<c:if test="${not empty sessionScope.userId}">
<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5 style='color: #0f56ba;'><b>| 주문 상품</b></h5>
			<table>
				<thead>
					<tr><th>꽃 정보</th><th>수량</th><th>금액</th></tr>
				</thead>
				<tbody>
					<tr>
						<c:forEach var="flower" items="${flowerList}">
							<td>${flower.flowerName}<input type='hidden' id='flowerNum' name='flowerNum' value='${flower.flowerNum}' readonly/></td>
							<td><input type='hidden' id='amount' name='amount' value='${flower.amount}' readonly/>${flower.amount}</td>
							<td>${flower.price * flower.amount}원</td>
						</c:forEach>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5 style='color: #0f56ba;'><b>| 배송지</b></h5>
			<table class="type1">
			<f:form modelAttribute='order' id='addOrderForm' method='post'>
				<tr>
					<th>수령인</th>
					<td><input type='text' id='recName' name='deliveryInformation' placeholder='이름'>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type='text' id='recContactNum' name='deliveryInformation' placeholder='01012345678' >
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<div class='row'>
							<div class='col'>
								<input type='text' id='recPostCode' name='recPostCode' placeholder='(우편번호)' readonly> &nbsp;
								<button type='button' class='btn btn-sm btn-outline-secondary' id='searchAddr'>찾기</button>
							</div>
						</div>
						<div class='row'>
							<div class='col'>
								<input type="text" id='recAddr' name='recAddr' style='width:80%' placeholder='(주소)' readonly/>
							</div>
						</div>
						<div class='row'>
							<div class='col'>
								<input type="text" id='recDetailAddr' name='recDetailAddr' style='width:80%' placeholder='(상세주소)' />
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th>희망 배송일</th>
					<td><input id='hopeDeliDate' type="date"></td>
				</tr>
				<tr>
					<th>요청사항</th>
					<td>
						<textarea id='request'></textarea>
					</td>
				</tr>
				</f:form>
			</table>
		</div>
	</div>
	
	<div class='row d-flex justify-content-center mt-5'>
		<div class='col'>
			<h5 style='color: #0f56ba;'><b>| 결제 정보</b></h5>
			<table class="type1">
				<tr>
					<th>상품 합계</th>
					<c:forEach var="flower" items="${flowerList}">
						<td>${flower.price * flower.amount}원</td>
					</c:forEach>
				</tr>
				<tr>
					<th>배송비</th>
					<td>5000원</td>
				</tr>
				<tr>
					<th>결제 금액</th>
					<c:forEach var="flower" items="${flowerList}">
						<td>${flower.price * flower.amount + 5000}원</td>
					</c:forEach>
				</tr>
			</table>
		</div>
	</div>
	<div class='row d-flex mt-5'>
		<div class='col'>
			<h5 style='color: #0f56ba;'><b>| 결제 방법</b></h5>
			<table class="type2">
				<tr>
					<th><input type='radio' value='카드 결제' id='payment'  name='payment'></th>
					<td><label>카드 결제</label></td>
				</tr>
				<tr>
					<th><input type='radio' value='무통장 입금' id='payment' name='payment'></th>
					<td><label>무통장 입금</label></td>
				</tr>
				<tr>
					<th><input type='radio' value='휴대폰 결제' id='payment' name='payment'></th>
					<td><label>휴대폰 결제</label></td>
				</tr>	
			</table>
		</div>
	</div>
	<div class='form-row align-items-center mt-5'>
		<div class='col-3'>
			<a href='${pageContext.request.contextPath}/user/terms'><button type='button' class='btn btn-secondary btn-block btn-sm'>약관보기</button></a>
		</div>
		<div class='form-check form-check-inline'>
			<input type='checkbox' class='form-check-input' id='terms'/>
			<label class='form-check-label'>약관에 동의합니다</label>
		</div>	
	</div><br><br><br>
	<div class='row d-flex justify-content-center mt-1'>
		<button class="btn btn-outline-secondary m-5 d-flex justify-content-center" 
			id='purchaseBtn'>결제하기</button>
	</div>
	</c:if>
</div>


<div id='cofirmModal' class='modal fade' tabindex='-1'>
	<div class='modal-dialog'>
		<div class='modal-content'>
			<div class='modal-header'>
				<h5 class='modal-title'>구매정보 입력</h5>
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