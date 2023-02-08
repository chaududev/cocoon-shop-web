<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <title>
    Quản lý Mini Sline Germany
  </title>
  
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
  <style>
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 200px;
  background: #f1f1f1;
  height: 30px;
}

/* Style the submit button */
form.example button {
  float: left;
  width: 50px;
  background: #2196F3;
  color: white;
  font-size: 19px;
  border: 1px solid grey;
  border-left: none; /* Prevent double borders */
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

/* Clear floats */
form.example::after {
  content: "";
  clear: both;
  display: table;
}
	.dk{
		background:#3b5998;
		color:#fff;
		text-align: center;
		padding:12px 20px;
		width:50;
	}
	.dkfb{
		background:#3b5998;
		color:#fff;
		text-align: center;
		padding:12px 20px;
		width:100%;
	}
	.hoac{
		text-align: center;
	}
	.dk2{
		background:#e34507;
		color:#fff;
		text-align: center;
		padding:12px 20px;
		width:100%;
		margin-bottom:10px;
	}
	.modal-title{
		text-align: center;
		color:#765ec9;
		width:100%;
		font-weight: bold;
	}
</style>
</head>

<body class="g-sidenav-show  bg-gray-200">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard " target="_blank">
        <img src="assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold text-white">Quản lý Mini Sline Germany</span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100" id="sidenav-collapse-main">
      <ul class="navbar-nav">
       <li class="nav-item">
          <a class="nav-link text-white " href="quanlyloai">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">table_view</i>
            </div>
            <span class="nav-link-text ms-1">Quản lý loại</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="quanlyhang">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">dashboard</i>
            </div>
            <span class="nav-link-text ms-1">Quản lý hàng</span>
          </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-white " href="quanlytaikhoan">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">opacity</i>
            </div>
            <span class="nav-link-text ms-1">Quản lý tài khoản</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary" href="quanlydonhang">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">receipt_long</i>
            </div>
            <span class="nav-link-text ms-1">Quản lý đơn hàng</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="thongke">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">view_in_ar</i>
            </div>
            <span class="nav-link-text ms-1">Thống kê</span>
          </a>
        </li>
      </ul>
    </div>
    
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group input-group-outline">
              <form class="example" action="quanlydonhang" method="post">
         	<input type="text" name="key" placeholder="SĐT.." value="" class="form-control"> 
  			<button type="submit"><i class="fa fa-search" ></i></button>
  			<br><br>
		</form>
       
            </div>
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
        
                <c:choose>

				<c:when test="${sessionScope.un!=null}">
				
				Hi: ${sessionScope.un} <i class="fas fa-sign-out-alt"></i> <a href="dangxuat">Đăng xuất </a>
				
				</c:when>
				
				<c:otherwise> <i class="fa fa-user me-sm-1"></i> <a href="dangnhap"> Đăng nhập </a> </c:otherwise>
				
				</c:choose>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <c:choose>

				<c:when test="${sessionScope.un==null}">
				
						<h3>Đăng nhập để xem mục này !</h3>
				
				</c:when>
				<c:otherwise>  
    <div class="container-fluid py-4">
      <c:if test="${not empty sessionScope.tb}">
        <script>
        let message = "${sessionScope.tb}";
        alert(message);
        <%
			session.setAttribute("tb", null);%>
   		 </script>
    </c:if> 
    
            		<c:set var = "sl" scope = "request" value = "${0}"/>
            		<c:set var = "tt" scope = "request" value = "${0}"/>
      <div class="row">
        <div class="col-12">
          <div class="card my-4">
     
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h6 class="text-white text-capitalize ps-3">CHI TIẾT ĐƠN HÀNG : ${ms }</h6>
                
              </div>
            </div>
            <div class="card-body px-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Ảnh hàng</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Tên hàng</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Số lượng mua</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Thành tiền</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${dsct}" var="ct"> 
                    <tr>
            		<td><img src="${ct.getAnh() }" width="60" height="80"></td>
            		<td>
            		<p class="text-xs font-weight-bold mb-0">${ct.getTenhang()}</p>
                    <p class="text-xs text-secondary mb-0">${ct.getDungtich()}</p>
                    <p class="text-xs text-secondary mb-0"><fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${ct.getGia() }" />₫</p>
                     </td>
    				<td> x ${ct.getSlmua() } </td>
    				 <td width="100"> = <fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${ct.getThanhtien() }" />₫</td>
    				
            		<c:set var = "sl" scope = "request" value = "${sl+ct.getSlmua()}"/>
            		<c:set var = "tt" scope = "request" value = "${tt+ct.getThanhtien()}"/>
					
    				</tr>
                </c:forEach>
                   	<tr>
    		 <th colspan="2"></th>
            	<th colspan="1"></th>
            	<th colspan="3">Tạm tính : <fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${tt }" />₫</th></tr>
    		<tr>
    		<tr>
    		 <th colspan="2"> </th>
            	<th colspan="1"></th>
            	<th colspan="3">Tiền vận chuyển : <fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${30000 }" />₫</th></tr>
    		<tr>
    		 <th colspan="2">Tổng : </th>
            	<th colspan="1">Số lượng : ${sl }</th>
            	<th colspan="3">Thành tiền : <fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${tt+30000 }" />₫</th></tr>
                    
                  </tbody>
                </table>
                <a href="quanlydonhang" class="btn btn-danger"> Trở lại </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    
    </div>
    </c:otherwise>
				
				</c:choose>
  </main>
 
  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=3.0.0"></script>
</body>

</html>