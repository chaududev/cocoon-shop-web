<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">

  <link rel="stylesheet" type="text/css" href="css/style.css">

  <link rel="stylesheet" href="plugins/animate/animate.min.css">

  <link rel="stylesheet" href="plugins/fontawesome/all.css">

  <link href="plugins/webfonts/font.css"
    rel="stylesheet">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">

  <!-- UIkit CSS -->
  <link rel="stylesheet" href="plugins/uikit/uikit.min.css" />
	<link rel="shortcut icon" href="http://cocoonvietnam.com/uploads/1566925621_68552603_2354164641345815_6327706885482872832_n.png" />
  

  <title>Cocoon Original Vietnam - Mỹ phẩm 100% thuần chay - Website chính thức</title>

</head>

<body>
  <!--Navbar-->
  <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

    <div class="container">
      <a class="navbar-brand" href="index.html">
        <img src="images/logo.jpg" class="logo-top" alt="">
      </a>
      <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="trangchu">TRANG CHỦ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="sanpham">SẢN PHẨM
              <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </a>
            <ul class="sub_menu">
            <c:forEach items="${dsloai }" var="ds"> 
               <li class="">
               <a href="sanpham?ml=${ds.getMaloai() }">${ds.getTenloai() }</a> 
               </li>
            </c:forEach>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="gioithieu">GIỚI THIỆU</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="lienhe">LIÊN HỆ</a>
          </li>
        </ul>
      </div>
     
      <div id="offcanvas-flip" uk-offcanvas="flip: true; overlay: true">
        <div class="uk-offcanvas-bar" style="    background: white;
            width: 350px;">

          <button class="uk-offcanvas-close" style="color:#272727" type="button" uk-close></button>

          <h3 style="font-size: 14px;
                color: #272727;
                text-transform: uppercase;
                margin: 3px 0 30px 0;
                font-weight: 500; letter-spacing: 2px;">Tìm kiếm</h3>
          <div class="search-box wpo-wrapper-search">
            <form action="sanpham" class="searchform searchform-categoris ultimate-search" method="post">
              <div class="wpo-search-inner" style="display:inline">
                <input type="hidden" name="type" value="product">
                <input required="" id="inputSearchAuto" name="key" maxlength="40" autocomplete="off"
                  class="searchinput input-search search-input" type="text" size="20"
                  placeholder="Tìm kiếm sản phẩm...">
              </div>
              <button type="submit" class="btn-search btn" id="search-header-btn">
                <i style="font-weight:bold" class="fas fa-search"></i>
              </button>
            </form>
            <div id="ajaxSearchResults" class="smart-search-wrapper ajaxSearchResults" style="display: none">
              <div class="resultsContent"></div>
            </div>
          </div>
        </div>
      </div>
      

      <div class="icon-ol">
        <a style="color: #272727" href="tracuu">
          <i class="fa fa-map-marker" aria-hidden="true"></i>
        </a>
        
        <a href="#" class="" uk-toggle="target: #offcanvas-flip">
          <i class="fas fa-search" style="color: black"></i>
        </a>
        
        <a style="color: #272727" href="htgio">
          <i class="fas fa-shopping-cart"></i>
        </a>
        <button class="navbar-toggler" type="button" uk-toggle="target: #offcanvas-flip1" data-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
    </div>
    </div>

  </nav>
  <!--Banner-->
  <div>
    <div>
    <c:choose>
         <c:when test="${timloai==null }">
      <img src="images/collection2.jpg" alt="Products">
      </c:when>
      <c:otherwise>
      <img src="${timloai.getAnhbanner() }" alt="Products" style="display: block; margin-left: auto; margin-right: auto;">
       </c:otherwise>
      </c:choose>
    </div>
  </div>

  <!--List Prodct-->
  <div class="container" style="margin-top: 50px; ">
    <div class="row">
     
      <div class="col-md-9 col-sm-12 col-xs-12">
        <div class="wrap-collection-title row">
          <div class="col-md-8 col-sm-12 col-xs-12">
          <h1 class="title" >
              TẤT CẢ LOẠI
            </h1><br>
         <c:forEach items="${dsloai }" var="ds"> 
           <div>
            <div>
            
              <a href="sanpham?ml=${ds.getMaloai() }" target="_self">
              <div>
              <img src="${ds.getAnhbanner() }" style="max-width: 1000px;
height: auto;"><br><br><br>
                  
              </div>
             </a>
            </div>
          </div>
          </c:forEach>
        
          <c:choose>
         <c:when test="${timloai==null }">
      <h1 class="title" >
              TẤT CẢ SẢN PHẨM
            </h1>
      </c:when>
      <c:otherwise>
      <h1 class="title" >
             ${timloai.getTenloai() }
            </h1>
       </c:otherwise>
      </c:choose>
            
            <div class="alert-no-filter"></div>
          </div>
        </div>
        <div class="row">
         <c:forEach items="${dshang }" var="s"> 
           <div class="col-md-3 col-sm-6 col-xs-6 col-6">
            <div class="product-block">
              <div class="product-img fade-box">
                  <img
                    src="${s.getAnh() }">
              </div>
              <div class="product-detail clearfix">
                <div class="pro-text">
                  <a  href="chitietsanpham?mh=${s.getMahang() }" style=" color: black;font-size: 14px;text-decoration: none;" href="#">
                    ${s.getTenhang() }
                  </a>
                </div>
                <div class="pro-price">
                 <a href="gio?mh=${s.getMahang() }&th=${s.getTenhang() }&gia=${s.getGia() }&anh=${s.getAnh() }&dungtich=${s.getDungtich() }"> 
            	         <img src="images/themgio.JPG"> </a>
                <p><fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${s.getGia() }" />₫</p>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
        
        </div>
       
      </div>
    </div>
  </div>
  <!--gallery-->
  <footer class="main-footer" style="text-align:center;padding-bottom: 15px;  background-color: #21120B;">
    <div class="container">
        
            <div class="footer-col footer-block">
              <div class="footer-content">
              <div class="logo-footer">
                  <img src="images/logo3.JPG" alt="logo">
                </div>
                <div class="social-list">
                  <a href="#" class="fab fa-facebook"></a>
                  <a href="#" class="fab fa-google"></a>
                  <a href="#" class="fab fa-twitter"></a>
                  <a href="#" class="fab fa-youtube"></a>
                </div>  
            </div>
            <div class="footer-col footer-block">
              <div class="footer-content toggle-footer">
                <ul style="color:white">
                  <li> SẢN XUẤT TẠI CÔNG TY TNHH MỸ PHẨM NATURE STORY</li>
                  <li>SỐ GPKD: 0313300273</li>
                  <li>Phòng Đăng kí Kinh doanh - Sở kế hoạch và đầu tư TP.HCM</li>
                  <li>38C - 39C, khu phố 1, quốc lộ 1A, phường Tân Thới Hiệp, Quận 12, Tp.HCM, Việt Nam</li>
                  <li>Điện thoại: 02838328228</li>
                </ul>
              </div>
              <div class="logo-footer">
                  <img src="images/logo-bct.png" alt="Bộ Công Thương">
                </div>
            </div>
        </div>
      
    </div>
    <div class="main-footer--copyright">
      <div class="container">
    
        <div class="main-footer--border" style="text-align:center;padding-bottom: 15px; color:#C1A55C">
          <p>   © 2018 Cocoon</p>
        </div>
      </div>
    </div>
  </footer>
  <script async defer crossorigin="anonymous" src="plugins/sdk.js"></script>
  <script src="plugins/jquery-3.4.1/jquery-3.4.1.min.js"></script>
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
  <script src="plugins/bootstrap/popper.min.js"></script>
  <script src="plugins/bootstrap/bootstrap.min.js"></script>
  <script src="plugins/owl.carousel/owl.carousel.min.js"></script>
  <script src="plugins/uikit/uikit.min.js"></script>
  <script src="plugins/uikit/uikit-icons.min.js"></script>
</body>

</html>
