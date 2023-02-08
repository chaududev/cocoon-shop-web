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
    
    
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group input-group-outline">
              <form class="example" action="quanlyloai" method="post">
         	<input type="text" name="key" placeholder="Từ khóa.." value="" class="form-control"> 
  			<button type="submit"><i class="fa fa-search" ></i></button>
  			<br><br>
		</form>
       
            </div>
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
                <i class="fa fa-user me-sm-1"></i>
                <c:choose>

				<c:when test="${sessionScope.un!=null}">
				
				Hi: ${sessionScope.un} <a href="dangxuat"> Đăng xuất </a>
				
				</c:when>
				
				<c:otherwise> <a href="dangnhap"> Đăng nhập </a> </c:otherwise>
				
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
    <c:if test="${not empty tb}">
        <script>
        let message = "${tb}";
        alert(message);
   		 </script>
    </c:if> 
    <div class="container-fluid py-4">
      <div class="modal-dialog modal-sm">
	      <div class="modal-content">
	        <div class="modal-header">
	          <h4 class="modal-title">Đăng nhập</h4>
	        </div>
	        <div class="modal-body">
	        <form method="post" action="dangnhap">
	        	<b><label>Tên đăng nhập:</label><br></b>
				<input type="text"  name="txtun" placeholder="Tên đăng nhập" size=30><br><br>
		 		<b><label for="password">Mật khẩu:</label><br></b>
		  		<input type="password" name="txtpass" placeholder="Mật khẩu" size=30><br><br>
		  		<input name="but1" type="submit" value="Đăng nhập" class="dkfb">
		  		<c:if test="${tb == 'dns'}">
				<b> tb:<c:out value="Dang nhap sai"></c:out> </b>
				</c:if>
		  	</form>
			 </div>
	 
	    </div>
	  </div>
      
    
    </div>
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