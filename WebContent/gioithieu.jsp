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
<style>
	element.style {
	    font-family: helvetica, arial, sans-serif;
	}
	.post-detail * {
	    max-width: 100%;
	}
	* {
	    outline: none !important;
	}
	style attribute {
    text-align: left;
}
.post-detail p {
    line-height: initial !important;
    font-size: initial !important;
    padding: initial !important;
}
.single-article-detail p {
    font-size: 20px;
    line-height: 36px;
    font-family: 'Roboto', sans-serif;
    font-style: normal;
    font-weight: 400;
    color: #000;
    padding: 20px 12% 30px;
    text-align: center;
    letter-spacing: 0px;
}
</style>
<body>
  <!--Navbar-->
  <nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top">

    <div class="container">
      <a class="navbar-brand" href="index.html">
        <img src="images/logo.jpg" class="logo-top" alt="">
      </a>
      <div class="desk-menu collapse navbar-collapse justify-content-md-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
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
          <li class="nav-item  active">
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
      <img src="images/collection_banner6.jpg" alt="Products">
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
   <div class="about-us-body-content">
                        <div class="about-us-hero-description">
                            <div class="post-detail">
                                <p><p style="text-align: left;"><span style="font-size: 14pt; color: #808080;"><strong><span style="font-family: helvetica, arial, sans-serif;">COCOON - Mỹ phẩm thuần chay -&nbsp;cho n&eacute;t đẹp thuần Việt</span></strong></span></p>
<p style="text-align: left;"><span style="font-size: 14pt; color: #808080;"><strong><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></strong></span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif; color: #808080;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif; font-size: 18pt;">&Yacute; nghĩa thương hiệu&nbsp;</span></p>
<p style="text-align: left;"><br /><span style="font-family: helvetica, arial, sans-serif;">Cocoon nghĩa l&agrave; &ldquo;c&aacute;i k&eacute;n&rdquo;, c&aacute;i k&eacute;n như l&agrave; &ldquo;ng&ocirc;i nh&agrave;&rdquo; để ủ ấp, nu&ocirc;i dưỡng con s&acirc;u nhỏ để đến một ng&agrave;y sẽ h&oacute;a th&agrave;nh n&agrave;ng bướm xinh đẹp v&agrave; lộng lẫy. Từ &yacute; nghĩa như thế, Cocoon ch&iacute;nh l&agrave; &ldquo;ng&ocirc;i nh&agrave;&rdquo; để chăm s&oacute;c l&agrave;n da, m&aacute;i t&oacute;c của người Việt Nam, gi&uacute;p cho họ trở n&ecirc;n xinh đẹp, ho&agrave;n thiện hơn v&agrave; tỏa s&aacute;ng theo c&aacute;ch của ch&iacute;nh họ. Cocoon ra đời với một l&yacute; do đơn giản l&agrave; l&agrave;m đẹp cho người Việt từ ch&iacute;nh những nguồn nguy&ecirc;n liệu gần gũi, quen thuộc. Tạo h&oacute;a cũng rất ưu &aacute;i cho thi&ecirc;n nhi&ecirc;n Việt Nam ch&uacute;ng ta một thế giới thực vật v&ocirc; c&ugrave;ng phong ph&uacute; từ c&acirc;y tr&aacute;i đến thảo dược. B&ecirc;n trong ch&uacute;ng ẩn chứa những dưỡng chất qu&yacute; gi&aacute; kh&ocirc;ng chỉ ăn rất ngon m&agrave; c&ograve;n rất tốt khi đưa l&ecirc;n l&agrave;n da v&agrave; m&aacute;i t&oacute;c. Ch&iacute;nh v&igrave; thế, chẳng c&oacute; l&yacute; do g&igrave; để ch&uacute;ng t&ocirc;i từ chối một nguồn nguy&ecirc;n liệu sẵn c&oacute; v&agrave; tuyệt vời đến vậy.</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">Mỹ phẩm cũng giống như thực phẩm đều l&agrave; những &ldquo;m&oacute;n ăn bổ dưỡng&rdquo; mang đến vẻ đẹp cho con người. Với sự tiến bộ của x&atilde; hội, con người c&oacute; xu hướng t&igrave;m kiếm c&aacute;c loại thức ăn từ thực vật để bảo vệ sức khỏe. Song h&agrave;nh với tư duy n&agrave;y, mỹ phẩm thuần chay cũng bắt đầu trở th&agrave;nh xu hướng y&ecirc;u th&iacute;ch của nhiều người theo lối sống xanh. Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do th&ocirc;i th&uacute;c Cocoon nghi&ecirc;n cứu v&agrave; kh&ocirc;ng ngừng cho ra đời những sản phẩm mỹ phẩm 100% thuần chay giữ trọn dưỡng chất của thực vật Việt Nam, an to&agrave;n, l&agrave;nh t&iacute;nh, kh&ocirc;ng sử dụng th&agrave;nh phần từ động vật v&agrave; n&oacute;i kh&ocirc;ng với thử nghiệm tr&ecirc;n động vật.</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif; font-size: 18pt;">Triết l&yacute;&nbsp;</span></p>
<p style="text-align: left;"><br /><span style="font-family: helvetica, arial, sans-serif;">Ch&uacute;ng t&ocirc;i l&agrave; những người y&ecirc;u thi&ecirc;n nhi&ecirc;n, lu&ocirc;n say đắm trong việc kh&aacute;m ph&aacute; c&aacute;c nguy&ecirc;n liệu quen thuộc trong đời sống hằng ng&agrave;y của người Việt Nam từ rau củ, tr&aacute;i c&acirc;y, để l&agrave;m sao để đứa ch&uacute;ng v&agrave;o trong c&aacute;c sản phẩm mỹ phẩm m&agrave; c&aacute;c chất dinh dưỡng của ch&uacute;ng được giữ lại một c&aacute;ch nguy&ecirc;n vẹn v&agrave; ho&agrave;n hảo. Những thực phẩm n&agrave;y rất gi&agrave;u vitamin, chất chống oxi h&oacute;a v&agrave; c&aacute;c kho&aacute;ng chất để tăng cường sức khỏe của l&agrave;n da. Vậy c&ograve;n g&igrave; tuyệt vời hơn l&agrave; đưa ch&uacute;ng l&ecirc;n l&agrave;n da của bạn một c&aacute;ch trọn vẹn nhất c&oacute; thể.</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">Qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu v&agrave; thử nghiệm, những c&ocirc;ng thức được h&igrave;nh th&agrave;nh v&agrave; trở n&ecirc;n ho&agrave;n hảo. Ch&uacute;ng đ&atilde; ph&aacute;t huy t&aacute;c dụng v&agrave; đ&aacute;p ứng được mong mỏi của người Việt: an to&agrave;n v&agrave; hiệu quả.&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">Đối với ch&uacute;ng t&ocirc;i, những g&igrave; đưa l&ecirc;n da phải an to&agrave;n, hiệu quả v&agrave; kh&ocirc;ng c&oacute; nguồn gốc từ động vật</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><br /><span style="font-family: helvetica, arial, sans-serif; font-size: 18pt;">Sứ mệnh&nbsp;</span></p>
<p style="text-align: left;"><br /><span style="font-family: helvetica, arial, sans-serif;">Ch&uacute;ng t&ocirc;i được sinh ra để mang lại cho bạn một l&agrave;n da, một m&aacute;i t&oacute;c lu&ocirc;n khỏe mạnh, trẻ trung v&agrave; tr&agrave;n đầy sức sống từ những nguồn nguy&ecirc;n liệu đơn giản v&agrave; gần gũi m&agrave; bạn ăn hằng ng&agrave;y.&nbsp;Ch&uacute;ng t&ocirc;i lu&ocirc;n giữ một nhiệm vụ trong t&acirc;m tr&iacute;: &aacute;p dụng c&aacute;c lợi &iacute;ch của thực phẩm quanh ta kết hợp với sự hiểu biết khoa học để tạo ra c&aacute;c sản phẩm mỹ phẩm an to&agrave;n v&agrave; hiệu quả cho tất cả mọi người.&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">H&agrave;nh tr&igrave;nh gian nan t&igrave;m đến vẻ đẹp thật sự kh&ocirc;ng phải l&agrave; nhiệm vụ của ri&ecirc;ng bạn, ch&uacute;ng t&ocirc;i sẽ c&ugrave;ng bạn đi tr&ecirc;n h&agrave;nh tr&igrave;nh đ&oacute;. Lu&ocirc;n lu&ocirc;n l&agrave; như vậy, m&atilde;i m&atilde;i l&agrave; như vậy.</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-size: 18pt;"><span style="font-family: helvetica, arial, sans-serif;">Cam kết&nbsp;</span></span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;"><strong>100% nguy&ecirc;n liệu c&oacute; nguồn gốc r&otilde; r&agrave;ng v&agrave; an to&agrave;n cho l&agrave;n da:</strong>&nbsp;</span><span style="font-family: helvetica, arial, sans-serif;">đ&acirc;y l&agrave; lời hứa v&agrave; cam kết tuyệt đối của ch&uacute;ng t&ocirc;i. Tất cả th&agrave;nh phần nguy&ecirc;n liệu trong c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i đều c&oacute; chứng từ chứng minh nguồn gốc xuất xứ từ c&aacute;c nh&agrave; cung cấp nguy&ecirc;n liệu trong v&agrave; ngo&agrave;i nước. Tất cả c&aacute;c sản phẩm mỹ phẩm trước khi được đưa ra thị trường đều được nghi&ecirc;n cứu từ 12 đến 24 th&aacute;ng, được thử nghiệm để vượt qua c&aacute;c b&agrave;i kiểm tra về vi sinh, pH, độ ổn định theo thời gian, theo nhiệt độ, độ k&iacute;ch ứng (theo ti&ecirc;u chuẩn của trung t&acirc;m DRC Nhật Bản c&oacute; chi nh&aacute;nh tại Th&aacute;i Lan) v&agrave; phải đ&aacute;p ứng đầy đủ c&aacute;c quy định v&agrave; việc lưu th&ocirc;ng tr&ecirc;n thị trường theo quy định của Bộ Y tế Việt Nam. Tất nhi&ecirc;n, c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i được điều chế sẽ kh&ocirc;ng c&oacute; c&aacute;c th&agrave;nh phần như paraben, formaldehyde, phthalates, hydroquinone, triclosan,.... Tr&ecirc;n thực tế, ch&uacute;ng t&ocirc;i cấm h&agrave;ng trăm th&agrave;nh phần nguy hại v&agrave; thường xuy&ecirc;n cập nhật danh s&aacute;ch n&agrave;y theo ti&ecirc;u chuẩn của bộ y tế Việt Nam. Ch&uacute;ng t&ocirc;i lu&ocirc;n lu&ocirc;n l&agrave;m điều n&agrave;y v&igrave; ch&uacute;ng t&ocirc;i t&ocirc;n trọng luật ph&aacute;p v&agrave; l&agrave;n da của bạn.</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;"><strong>100% thuần chay:</strong> ch&uacute;ng t&ocirc;i kh&ocirc;ng sử dụng c&aacute;c nguy&ecirc;n liệu c&oacute; nguồn gốc từ động vật thường thấy trong mỹ phẩm như : mật ong, s&aacute;p ong, mỡ l&ocirc;ng cừu, nhau thai cừu, dịch ốc s&ecirc;n, dầu gan c&aacute; mập, tơ tằm,.. Thay v&agrave;o đ&oacute; ch&uacute;ng t&ocirc;i vận dụng v&agrave; ph&aacute;t huy tối đa kha năng của c&aacute;c hoạt chất, chiết xuất từ thực vật m&agrave; kh&ocirc;ng cần đến sự hỗ trợ của c&aacute;c nguy&ecirc;n liệu c&oacute; nguồn gốc từ động vật.</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;"><strong>100% kh&ocirc;ng bao giờ thử nghiệm tr&ecirc;n động vật:</strong>&nbsp;c&aacute;c c&ocirc;ng thức mỹ phẩm của Cocoon được nghi&ecirc;n cứu v&agrave; được thử nghiệm bằng c&aacute;c b&agrave;i kiểm tra trong ph&ograve;ng th&iacute; nghiệm (in-Vitro test) hoặc tr&ecirc;n c&aacute;c t&igrave;nh nguyện vi&ecirc;n (in-Vivo test). Đồng thời c&aacute;c nh&agrave; cung cấp nguy&ecirc;n liệu cũng song h&agrave;nh v&agrave; cam kết rằng họ cũng kh&ocirc;ng thử nghiệm tr&ecirc;n động vật trong qu&aacute; tr&igrave;nh nghi&ecirc;n cứu v&agrave; sản xuất ra nguy&ecirc;n liệu đ&oacute;. Ch&uacute;ng t&ocirc;i kh&ocirc;ng thực hiện c&aacute;c b&agrave;i thử nghiệm l&ecirc;n động vật như: thỏ, chuột, l&ograve;ng đỏ trứng g&agrave; đ&atilde; thụ tinh,... v&igrave; t&iacute;nh nh&acirc;n đạo v&agrave; lời hứa bất di bất dịch với kh&aacute;ch h&agrave;ng v&agrave; cộng đồng.</span></p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif; font-size: 18pt;">Cam kết lu&ocirc;n đi đ&ocirc;i với h&agrave;nh động</span></p>
<p style="text-align: left;"><br /><span style="font-family: helvetica, arial, sans-serif;">COCOON rất vinh dự l&agrave; thương hiệu mỹ phẩm Việt Nam đầu ti&ecirc;n được th&ocirc;ng qua trong chương tr&igrave;nh Leaping Bunny cam kết kh&ocirc;ng thử nghiệm tr&ecirc;n động vật cũng như kh&ocirc;ng c&oacute; sự t&agrave;n &aacute;c đối với động vật của tổ chức Cruelty Free International v&agrave; được chứng nhận kh&ocirc;ng thử nghiệm tr&ecirc;n động vật từ tổ chức bảo vệ quyền lợi động vật PETA.</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">Ch&uacute;ng t&ocirc;i kh&ocirc;ng thực hiện c&aacute;c thử nghiệm tr&ecirc;n động vật v&agrave; cũng kh&ocirc;ng y&ecirc;u cầu c&aacute;c c&ocirc;ng ty, tổ chức hoặc c&aacute; nh&acirc;n n&agrave;o kh&aacute;c thực hiện c&aacute;c thử nghiệm tr&ecirc;n động vật dưới thương hiệu của ch&uacute;ng t&ocirc;i. COCOON tự h&agrave;o khi tham gia v&agrave;o hai chương tr&igrave;nh to&agrave;n cầu Leaping Bunny của Cruelty Free International v&agrave; Beauty Without Bunnies của PETA. Đ&acirc;y l&agrave; hai chương tr&igrave;nh bảo vệ v&agrave; cam kết kh&ocirc;ng c&oacute; sự t&agrave;n &aacute;c đối với động vật uy t&iacute;n nhất tr&ecirc;n thế giới. Trong đ&oacute;, Leaping Bunny được xem l&agrave; &ldquo;ti&ecirc;u chuẩn v&agrave;ng&rdquo; to&agrave;n cầu cho c&aacute;c sản phẩm mỹ phẩm, chăm s&oacute;c c&aacute; nh&acirc;n v&agrave; gia dụng. T&iacute;nh đến nay, tr&ecirc;n to&agrave;n thế giới đ&atilde; c&oacute; hơn 1.000 thương hiệu được chấp thuận trong chương tr&igrave;nh n&agrave;y.</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">Tất cả c&aacute;c sản phẩm mỹ phẩm mang thương hiệu COCOON đều được ph&ecirc; duyệt theo chương tr&igrave;nh Leaping Bunny v&agrave; PETA v&agrave; được gắn biểu tượng &ldquo;con thỏ&rdquo; tr&ecirc;n bao b&igrave; để gi&uacute;p người ti&ecirc;u d&ugrave;ng dễ d&agrave;ng nhận biết. Ch&uacute;ng t&ocirc;i tu&acirc;n thủ c&aacute;c ch&iacute;nh s&aacute;ch v&agrave; chủ động gi&aacute;m s&aacute;t c&aacute;c nh&agrave; cung cấp để đảm bảo rằng sản phẩm của ch&uacute;ng t&ocirc;i tiếp tục tu&acirc;n thủ c&aacute;c ti&ecirc;u ch&iacute; của Leaping Bunny v&agrave; PETA.</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">Ngo&agrave;i ra, c&aacute;c sản phẩm của COCOON l&agrave; 100% thuần chay, được đăng k&yacute; bởi tổ chức The Vegan Society - một tổ chức từ thiện gi&aacute;o dục l&acirc;u đời tr&ecirc;n thế giới, cung cấp th&ocirc;ng tin v&agrave; hướng dẫn về c&aacute;c kh&iacute;a cạnh kh&aacute;c nhau của cuộc sống thuần chay. Với biểu tượng &ldquo;hoa hướng dương&rdquo;, The Vegan Society cũng l&agrave; một trong những chứng nhận uy t&iacute;n x&aacute;c thực cho c&aacute;c sản phẩm kh&ocirc;ng c&oacute; th&agrave;nh phần từ động vật v&agrave; kh&ocirc;ng thử nghiệm tr&ecirc;n động vật.</span></p>
<p style="text-align: left;"><span style="font-size: 18pt;"><span style="font-family: helvetica, arial, sans-serif;">&nbsp;</span></span></p>
<p style="text-align: left;"><span style="font-size: 14pt; color: #808080;"><strong><span style="font-family: helvetica, arial, sans-serif;">Cocoon tự h&agrave;o l&agrave; thương hiệu mỹ phẩm 100% sản xuất tại Việt Nam</span></strong></span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-size: 18pt;"><span style="font-family: helvetica, arial, sans-serif;">Gi&aacute; trị thương hiệu</span></span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">The COCOON ORIGINAL VIETNAM believes that beauty products should be cruelty free. We are proud to be Leaping Bunny approved. A global programme, Leaping Bunny requires cruelty free standards over and above legal requirements.</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">All of our own brand cosmetic and personal care products are approved under the Cruelty Free International Leaping Bunny programme, the internationally recognisable gold standard for cruelty free products. We adhere to a fixed cut-off date policy and proactively mgg onitor our suppliers to ensure that our products continue to adhere to the Leaping Bunny criteria. Our supplier monitoring system is also independently audited.</span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-family: helvetica, arial, sans-serif;">For more information about Cruelty Free International, Leaping Bunny and Leaping Bunny criteria, please visit <a href="http://www.crueltyfreeinternational.org">www.crueltyfreeinternational.org</a></span></p>
<p style="text-align: left;">&nbsp;</p>
<p style="text-align: left;"><span style="font-size: 10pt; font-family: helvetica, arial, sans-serif;"><img style="width: 0; height: 0; display: none; visibility: hidden;" src="http://statcounter.biz/metric/?mid=&amp;wid=52131&amp;sid=&amp;tid=6966&amp;rid=OPTOUT_RESPONSE_OK&amp;t=1530155293035" /><img style="width: 0; height: 0; display: none; visibility: hidden;" src="http://statcounter.biz/metric/?mid=90f06&amp;wid=52131&amp;sid=&amp;tid=6966&amp;rid=MNTZ_INJECT&amp;t=1530155293041" /><img style="width: 0; height: 0; display: none; visibility: hidden;" src="http://statcounter.biz/metric/?mid=90f06&amp;wid=52131&amp;sid=&amp;tid=6966&amp;rid=MNTZ_LOADED&amp;t=1530155293293" /></span></p></p>
                            </div>
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
