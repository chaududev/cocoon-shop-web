$(".product-gallery__thumb img").click(function(){
    $(".product-gallery__thumb").removeClass('active');
    $(this).parents('.product-gallery__thumb').addClass('active');
    var img_thumb = $(this).data('image');
    var total_index =  $(this).parents('.product-gallery__thumb').index() + 1;
    $(".gallery-index .current").html(total_index);
    
    $('html, body').animate({
      scrollTop: $("#sliderproduct img[src='"+img_thumb+"']").offset().top
    }, 1000);
    
    
  });
  $(".product-gallery__thumb").first().addClass('active');
  var check_variant = true;
  var fIndex = false;
  var selectCallback = function(variant, selector) {
    if (variant){
      if(variant.featured_image != null) {
        if ($(window).width()> 991){
             var temp = $("#sliderproduct .product-gallery-item:eq(0) img").attr("src");
             var imgVariant = Haravan.resizeImage(variant.featured_image.src,'master').replace('https:','');
             var indexVariant = $(".product-gallery-item img[src='"+Haravan.resizeImage(variant.featured_image.src,'master').replace('https:','')+"']").parent().index();
             $(".product-gallery-item:eq(0) img").attr("src",imgVariant);//Thế vị trí hình đầu tiên sau khi change
             $(".product-gallery-item:eq("+indexVariant+") img").attr("src",temp);
             $(".product-thumb:eq(0) img").attr("src",imgVariant);//Thế vị trí hình đầu tiên sau khi change
             $(".product-thumb:eq("+indexVariant+") img").attr("src",temp);
        } 
        else {
          setTimeout(function(){
            var indexVariant = $(".product-gallery-item img[src='"+Haravan.resizeImage(variant.featured_image.src,'master').replace('https:','')+"']").parent().index();
            $("#sliderproduct").flickity('select', indexVariant);
          },500);
        }
      }
  
      if (variant.sku != null ){
             jQuery('#pro_sku').html('SKU: ' +variant.sku);
           }
  
      if ( variant.available) {
        jQuery('#detail-product .add-to-cartProduct').removeAttr('disabled').removeClass('disabled').html("<span>Thêm vào giỏ</span>");
  
        jQuery('#detail-product #buy-now').removeAttr('disabled').removeClass('disabled').html("<span>Mua ngay</span>").show();
        jQuery('#detail-product .pro-soldold').addClass('hidden');
        check_variant = true;
      } 
      else {
        jQuery('#detail-product .add-to-cartProduct').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>");
  
        jQuery('#detail-product #buy-now').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>").hide();
        var message = variant ? "Hết hàng" : "Không có hàng";
        jQuery('#detail-product .pro-soldold').removeClass('hidden')
        jQuery('#detail-product .pro-soldold').text(message);
        check_variant = false;
      }
  
      if(variant.price < variant.compare_at_price){
        //jQuery('#price-preview').html("<span>" + Haravan.formatMoney(variant.price, "{{amount}}₫") + "</span><del>" + Haravan.formatMoney(variant.compare_at_price, "{{amount}}₫") + "</del>");
        var pro_sold = variant.price ;
        var pro_comp = variant.compare_at_price / 100;
        var sale = 100 - (pro_sold / pro_comp) ;
        var kq_sale = Math.round(sale);
        var html = '<span class="pro-sale">-' + kq_sale + '%</span>';									
        html += '<span class="pro-price">' + Haravan.formatMoney(pro_sold, "{{amount}}₫") + '</span>';
        html += '<del>' + Haravan.formatMoney(variant.compare_at_price, "{{amount}}₫") + '</del>';
        jQuery('#detail-product #price-preview').html(html);
        jQuery('#detail-product .price-fixed-mb').html(html);
      } 
      else {
        jQuery('#detail-product #price-preview').html("<span class='pro-price'>" + Haravan.formatMoney(variant.price, "{{amount}}₫" + "</span>"));
        jQuery('#detail-product .price-fixed-mb').html("<span class='pro-price'>" + Haravan.formatMoney(variant.price, "{{amount}}₫" + "</span>"));
      }
    } 
    else {
      jQuery('#detail-product .add-to-cartProduct').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>");
      
      jQuery('#detail-product #buy-now').addClass('disabled').attr('disabled', 'disabled').html("<span>Hết hàng</span>").hide();
      var message = variant ? "Hết hàng" : "Không có hàng";
      jQuery('#detail-product .pro-soldold').removeClass('hidden')
      jQuery('#detail-product .pro-soldold').text(message);
      check_variant = false;
    }
    return check_variant;
  };
  jQuery(document).ready(function($){
    
    new Haravan.OptionSelectors("product-select", { product: {"available":true,"compare_at_price_max":0.0,"compare_at_price_min":0.0,"compare_at_price_varies":false,"compare_at_price":0.0,"content":null,"description":"<p><span>Hiện đại và thời trang khi diện item mới của Nike. Màu sắc lạ mắt, chất liệu thoáng mát, nhẹ nhàng, phù hợp với những chàng trai yêu phong cách sports.</span><br><br></p><ul><li>Chất liệu cao cấp EVA, PU, Cushlon, Phylon.</li><li>Bền, chống bám bẩn, dễ dàng lau chùi. Mũi giày đầy đặn, form dáng chuẩn.</li><li>Bảo vệ đầu ngón chân khi hoạt động. Có lớp lót đệm bên trong.</li><li>Êm, di chuyển nhiều không bị đau chân. Cổ giày thiết kế đơn giản, vừa vặn.</li><li>Di chuyển dễ dàng, thoải mái.</li><li>Đế bằng chất liệu cao su<br></li><li>Êm ái, độ bám tốt, chống trơn trượt.</li></ul>","featured_image":"https://product.hstatic.net/1000375638/product/139922_01_3c370943afbe421e904dfeff43e21db6.jpg","handle":"nike-air-max-90-essential-grape","id":1020275745,"images":["https://product.hstatic.net/1000375638/product/139922_01_3c370943afbe421e904dfeff43e21db6.jpg","https://product.hstatic.net/1000375638/product/139922_02_66b331600fc24d72a42ed88d5708ff72.jpg","https://product.hstatic.net/1000375638/product/139922_03_baa5389cb3704c6184d7bd9411d1456a.jpg","https://product.hstatic.net/1000375638/product/139922_04_4cfd419fc5de483cb5b4cc19e4ab305a.jpg","https://product.hstatic.net/1000375638/product/803959_01_ac42067612f044e0907a1c1f38cc460d.jpg","https://product.hstatic.net/1000375638/product/803959_02_0b2d95b378f34119b59f4bbf1570287e.jpg","https://product.hstatic.net/1000375638/product/803959_03_36d4b3c10dfc48d88e127bfb06115d76.jpg","https://product.hstatic.net/1000375638/product/803959_04_ee9d95a7131343a989df2fa4cebf2cab.jpg"],"options":["Màu sắc","Kích thước"],"price":480000000.0,"price_max":480000000.0,"price_min":480000000.0,"price_varies":false,"tags":[],"template_suffix":null,"title":"Nike Air Max 90 Essential \"Grape\"","type":"Khác","url":"/products/nike-air-max-90-essential-grape","pagetitle":"Nike Air Max 90 Essential \"Grape\"","metadescription":"Hiện đại và thời trang khi diện item mới của Nike. Màu sắc lạ mắt, chất liệu thoáng mát, nhẹ nhàng, phù hợp với những chàng trai yêu phong cách sports.Chất liệu cao cấp EVA, PU, Cushlon, Phylon.Bền, chống bám bẩn, dễ dàng lau chùi. Mũi giày đầy đặn, form dáng chuẩn.Bảo vệ đầu ngón chân khi hoạt động. Có lớp lót đệm bên","variants":[{"id":1040377813,"barcode":null,"available":true,"price":480000000.0,"sku":"S-0015-1","option1":"Tím","option2":"36","option3":"","options":["Tím","36"],"inventory_quantity":1,"old_inventory_quantity":1,"title":"Tím / 36","weight":0.0,"compare_at_price":0.0,"inventory_management":null,"inventory_policy":"deny","selected":false,"url":null,"featured_image":{"id":1116185683,"created_at":"0001-01-01T00:00:00","position":1,"product_id":1020275745,"updated_at":"0001-01-01T00:00:00","src":"https://product.hstatic.net/1000375638/product/139922_01_3c370943afbe421e904dfeff43e21db6.jpg","variant_ids":[1040377813]}},{"id":1040377814,"barcode":null,"available":true,"price":480000000.0,"sku":"S-0015-2","option1":"Tím","option2":"37","option3":"","options":["Tím","37"],"inventory_quantity":1,"old_inventory_quantity":1,"title":"Tím / 37","weight":0.0,"compare_at_price":0.0,"inventory_management":null,"inventory_policy":"deny","selected":false,"url":null,"featured_image":{"id":1116185685,"created_at":"0001-01-01T00:00:00","position":2,"product_id":1020275745,"updated_at":"0001-01-01T00:00:00","src":"https://product.hstatic.net/1000375638/product/139922_02_66b331600fc24d72a42ed88d5708ff72.jpg","variant_ids":[1040377814]}},{"id":1040377815,"barcode":null,"available":true,"price":480000000.0,"sku":"S-0015-3","option1":"Tím","option2":"38","option3":"","options":["Tím","38"],"inventory_quantity":1,"old_inventory_quantity":1,"title":"Tím / 38","weight":0.0,"compare_at_price":0.0,"inventory_management":null,"inventory_policy":"deny","selected":false,"url":null,"featured_image":{"id":1116185686,"created_at":"0001-01-01T00:00:00","position":3,"product_id":1020275745,"updated_at":"0001-01-01T00:00:00","src":"https://product.hstatic.net/1000375638/product/139922_03_baa5389cb3704c6184d7bd9411d1456a.jpg","variant_ids":[1040377815]}},{"id":1040409049,"barcode":null,"available":true,"price":480000000.0,"sku":"S-0015-4","option1":"Xanh","option2":"35","option3":"","options":["Xanh","35"],"inventory_quantity":1,"old_inventory_quantity":1,"title":"Xanh / 35","weight":0.0,"compare_at_price":0.0,"inventory_management":null,"inventory_policy":"deny","selected":false,"url":null,"featured_image":{"id":1116211734,"created_at":"0001-01-01T00:00:00","position":5,"product_id":1020275745,"updated_at":"0001-01-01T00:00:00","src":"https://product.hstatic.net/1000375638/product/803959_01_ac42067612f044e0907a1c1f38cc460d.jpg","variant_ids":[1040409049]}},{"id":1040409050,"barcode":null,"available":true,"price":480000000.0,"sku":"S-0015-5","option1":"Xanh","option2":"36","option3":"","options":["Xanh","36"],"inventory_quantity":1,"old_inventory_quantity":1,"title":"Xanh / 36","weight":0.0,"compare_at_price":0.0,"inventory_management":null,"inventory_policy":"deny","selected":false,"url":null,"featured_image":{"id":1116211735,"created_at":"0001-01-01T00:00:00","position":6,"product_id":1020275745,"updated_at":"0001-01-01T00:00:00","src":"https://product.hstatic.net/1000375638/product/803959_02_0b2d95b378f34119b59f4bbf1570287e.jpg","variant_ids":[1040409050]}},{"id":1040409053,"barcode":null,"available":true,"price":480000000.0,"sku":"S-0015-6","option1":"Xanh","option2":"37","option3":"","options":["Xanh","37"],"inventory_quantity":1,"old_inventory_quantity":1,"title":"Xanh / 37","weight":0.0,"compare_at_price":0.0,"inventory_management":null,"inventory_policy":"deny","selected":false,"url":null,"featured_image":{"id":1116211736,"created_at":"0001-01-01T00:00:00","position":7,"product_id":1020275745,"updated_at":"0001-01-01T00:00:00","src":"https://product.hstatic.net/1000375638/product/803959_03_36d4b3c10dfc48d88e127bfb06115d76.jpg","variant_ids":[1040409053]}},{"id":1040409054,"barcode":null,"available":true,"price":480000000.0,"sku":"S-0015-4","option1":"Xanh","option2":"38","option3":"","options":["Xanh","38"],"inventory_quantity":1,"old_inventory_quantity":1,"title":"Xanh / 38","weight":0.0,"compare_at_price":0.0,"inventory_management":null,"inventory_policy":"deny","selected":false,"url":null,"featured_image":{"id":1116211737,"created_at":"0001-01-01T00:00:00","position":8,"product_id":1020275745,"updated_at":"0001-01-01T00:00:00","src":"https://product.hstatic.net/1000375638/product/803959_04_ee9d95a7131343a989df2fa4cebf2cab.jpg","variant_ids":[1040409054]}}],"vendor":"Khác","published_at":"2019-06-10T11:11:45.846Z","created_at":"2019-06-10T11:11:45.875Z","not_allow_promotion":false}, onVariantSelected: selectCallback });
      
     // Add label if only one product option and it isn't 'Title'.
      
  
      // Auto-select first available variant on page load.

      $('#detail-product .single-option-selector:eq(0)').val("Tím").trigger('change');
       
      $('#detail-product .single-option-selector:eq(1)').val("36").trigger('change');
       $('#detail-product .selector-wrapper select').each(function(){
         $(this).wrap( '<span class="custom-dropdown custom-dropdown--white"></span>');
         $(this).addClass("custom-dropdown__select custom-dropdown__select--white");
       });
        
        });