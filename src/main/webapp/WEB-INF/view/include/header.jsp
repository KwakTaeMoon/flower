<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<script>

</script>
	<c:if test="${empty sessionScope.userId}">
	<div class='header'>
		<div class='row'>
			<div class='col'>
				<nav class='navbar navbar-expand-sm navbar-light fixed-top' style='background-color:#fcfdff'>
					<div id='logoTop'><a href='<%=request.getContextPath() %>/'>로고 이미지</a></div>
					<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#menu'>
						<i class='fa fa-bars'></i>
					</button>
				
					<div class='collapse navbar-collapse' id='menu'>
						<ul class='nav navbar-nav w-100 justify-content-around'>
							<li class='nav-item active'>
								<a class='nav-link' href='#'>꽃다발</a>
							</li>
							<li class='nav-item active'>
								<a class='nav-link' href='#'>꽃바구니</a>
							</li>
							<li class='nav-item active'>
								<a class='nav-link' href='.<%=request.getContextPath() %>/notice/01.html'>공지</a>
							</li>
							<li class='nav-item active'>
<<<<<<< HEAD
								<a class='nav-link' href='<%=request.getContextPath() %>/user/login'>후기</a>
=======
								<a class='nav-link' href='<%=request.getContextPath() %>/review/listReview'>후기</a>
>>>>>>> refs/heads/dev
							</li>
							<li class='nav-item active'>
								<a class='nav-link' href='<%=request.getContextPath() %>/user/login'>Login</a>
							</li>
							<li>
							<div class='d-flex align-items-center'>
		    					<input class='form-control form-control-sm' type='search' placeholder='Search'>
		    					&emsp;<a href='#'><i class="fa fa-search" style='color:#3C5087'></i></a>&nbsp;
	  						</div>
	  						</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	</c:if>
	
	<c:if test="${not empty sessionScope.userId}">
	<div class='header'>
		<div class='row'>
			<div class='col'>
				<nav class='navbar navbar-expand-sm navbar-light fixed-top' style='background-color:#fcfdff'>
					<div id='logoTop'><a href='<%=request.getContextPath() %>/'>로고 이미지</a></div>
					<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#menu'>
						<i class='fa fa-bars'></i>
					</button>
				
					<div class='collapse navbar-collapse' id='menu'>
						<ul class='nav navbar-nav w-100 justify-content-around'>
							<li class='nav-item active'>
								<a class='nav-link' href='#'>꽃다발</a>
							</li>
							<li class='nav-item active'>
								<a class='nav-link' href='#'>꽃바구니</a>
							</li>
							<li class='nav-item active'>
								<a class='nav-link' href='.<%=request.getContextPath() %>/notice/01.html'>공지</a>
							</li>
							<li class='nav-item active'>
								<a class='nav-link' href='<%=request.getContextPath() %>/review/listReview'>후기</a>
							</li>
							<li class='nav-item active'>
								<a class='nav-link' href='<%=request.getContextPath() %>/user/myPage'>MyPage</a>
							</li>
							<li>
							<div class='d-flex align-items-center'>
		    					<input class='form-control form-control-sm' type='search' placeholder='Search'>
		    					&emsp;<a href='#'><i class="fa fa-search" style='color:#3C5087'></i></a>&nbsp;
	  						</div>
	  						</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	</c:if>