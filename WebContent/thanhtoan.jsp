<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
	<style>
input[type='number']{
    width: 50px;
} 
</style>
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
          <li class="nav-item ">
            <a class="nav-link" href="trangchu">TRANG CHỦ</a>
          </li>
          <li class="nav-item active">
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
  

  <!--List Prodct-->
  <div class="container" style="margin-top: 50px; ">
  <div class="row">
  <div style="width: 55%; float:left">
  <h3>ĐIỀN THÔNG TIN NHẬN HÀNG</h3>
  	<form method="post" action="dathang">
                          <label class="string required control-label">Họ tên<span class="redast">*</span></label>
                          <div class="controls">
                            <input class="string required" name="name" required="required" size="50" type="text">
                          </div>
                        <div class="control-group">
                          <label class="string required control-label">Email<span class="redast">*</span></label>
                          <div class="controls">
                            <input class="string required" name="email" required="required" size="50" type="email">
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="string required control-label">Số điện thoại<span class="redast">*</span></label>
                          <div class="controls">
                            <input class="string required" name="phone" required="required" size="50" type="text">
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="string required control-label">Địa chỉ giao hàng<span class="redast">*</span></label>
                          <div class="controls">
                            <input class="string required" name="address" required="required" size="50" type="text">
                          </div>
                        </div>
                        <div class="control-group">
                          <select name="calc_shipping_provinces" required="">
						  <option value="">Tỉnh / Thành phố</option>
						</select>
						<select name="calc_shipping_district" required="">
						  <option value="">Quận / Huyện</option>
						</select>
						<input class="billing_address_1" name="tinh" type="hidden" value="">
						<input class="billing_address_2" name="quan" type="hidden" value="">
						</div> <br><br>
						
								  		<input name="but" type="submit" value="Đặt hàng" class="btn-primary">
								 </form>
								 <br><br>
	</div>
          
  <div style="width: 45%; float:right; " >
 <table class="table">
    	<c:set var = "tt" scope = "request" value = "${0}"/>
    	<c:set var = "sl" scope = "request" value = "${0}"/>
    	<c:forEach items="${dsgh }" var="g"> 
    		<tr>
    			<td><img src="${g.getAnh() }" width="60" height="80"></td>
    				<td>${g.getTenhang() }
    				<br>${g.getDungtich() }</td>
    				<td><fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${g.getGia() }" />₫</td>
    				<td>x ${g.getSlmua() }</td>
    				<td>= <fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${g.getThanhtien() }" />₫</td>
				     <c:set var = "tt" scope = "request" value = "${tt+g.getThanhtien()}"/>
				     <c:set var = "sl" scope = "request" value = "${sl+g.getSlmua()}"/>
    		</tr>
    	</c:forEach>
    	 <tr>
		 <th colspan="2"> Tạm tính </th>
		 <th colspan="2"> </th>
		 <td><fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${tt }" />₫
        <td></td>
		</tr>
		<tr>
		 <th colspan="2"> Phí vận chuyển </th>
		 <th colspan="2"> </th>
		 <td><fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${30000 }" />₫
        <td></td>
		</tr>
		<tr>
		 <th colspan="2"><b> Tổng đơn hàng</b> </th>
		 <th colspan="2"> ${sl } sản phẩm</th>
		 <td><fmt:formatNumber type="number" 
        		maxFractionDigits="3" value="${tt+30000 }" />₫
        <td></td>
		</tr>
		 </table>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js"></script>
<script>//<![CDATA[
if (address_2 = localStorage.getItem('address_2_saved')) {
  $('select[name="calc_shipping_district"] option').each(function() {
    if ($(this).text() == address_2) {
      $(this).attr('selected', '')
    }
  })
  $('input.billing_address_2').attr('value', address_2)
}
if (district = localStorage.getItem('district')) {
  $('select[name="calc_shipping_district"]').html(district)
  $('select[name="calc_shipping_district"]').on('change', function() {
    var target = $(this).children('option:selected')
    target.attr('selected', '')
    $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
    address_2 = target.text()
    $('input.billing_address_2').attr('value', address_2)
    district = $('select[name="calc_shipping_district"]').html()
    localStorage.setItem('district', district)
    localStorage.setItem('address_2_saved', address_2)
  })
}
$('select[name="calc_shipping_provinces"]').each(function() {
  var $this = $(this),
    stc = ''
  c.forEach(function(i, e) {
    e += +1
    stc += '<option value=' + e + '>' + i + '</option>'
    $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
    if (address_1 = localStorage.getItem('address_1_saved')) {
      $('select[name="calc_shipping_provinces"] option').each(function() {
        if ($(this).text() == address_1) {
          $(this).attr('selected', '')
        }
      })
      $('input.billing_address_1').attr('value', address_1)
    }
    $this.on('change', function(i) {
      i = $this.children('option:selected').index() - 1
      var str = '',
        r = $this.val()
      if (r != '') {
        arr[i].forEach(function(el) {
          str += '<option value="' + el + '">' + el + '</option>'
          $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)
        })
        var address_1 = $this.children('option:selected').text()
        var district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('address_1_saved', address_1)
        localStorage.setItem('district', district)
        $('select[name="calc_shipping_district"]').on('change', function() {
          var target = $(this).children('option:selected')
          target.attr('selected', '')
          $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
          var address_2 = target.text()
          $('input.billing_address_2').attr('value', address_2)
          district = $('select[name="calc_shipping_district"]').html()
          localStorage.setItem('district', district)
          localStorage.setItem('address_2_saved', address_2)
        })
      } else {
        $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
        district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('district', district)
        localStorage.removeItem('address_1_saved', address_1)
      }
    })
  })
})
//]]></script>
</body>

</html>
