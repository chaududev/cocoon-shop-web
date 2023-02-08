$(document).ready(function () {
    
});



// $(document).ready(function(){
//     $('#add-to-cart').click(function(e){	
//       e.preventDefault();
//       $(this).addClass('clicked_buy');
//       add_item_show_modalCart($('#product-select').val());
//       getCartModal();
//     });
//     $('#add-to-cartbottom').click(function(){	
//       $('#add-to-cart').trigger('click');
//     });
//     $('#quan-input').keyup(function(){
//       $('[name="quantity"]').val($(this).val());
//     })
//     $('[name="quantity"]').on('keyup change', function(){
//       $('#quan-input').val($(this).val());
//     })
//     $('.buy-now').click(function(e){	
//       e.preventDefault() ;
//       var id = $('select#product-select').val();
//       var quantity = $('#quantity').val();
//       var params = {
//         type: 'POST',
//         url: '/cart/add.js',
//         async : false,
//         data: 'quantity=' + quantity + '&id=' + id,
//         dataType: 'json',
//         success: function(line_item) {
//           window.location = '/checkout';
//         },
//         error: function(XMLHttpRequest, textStatus) {
//           Haravan.onError(XMLHttpRequest, textStatus);
//         }
//       };
//       jQuery.ajax(params);
//     });
//   });
//   $(document).on("click","#product-zoom-in",function(){
//     //	var indexThumb = $(this).index();
//     $("body").addClass("open_layer");
//     $("#divzoom").css({'opcaity':0,'visibility':'hidden'}).show();
//     $('.divzoom_main').flickity({
//       resize:true,
//       draggable: true,
//     });
//     if($(window).width() > 768){
//       var ncurrent = parseInt($(".gallery-index .current").html()) - 1;
//     }
//     else{
//       var ncurrent = parseInt($(".product-gallery-item.is-selected").index());
//     }
//     $('.divzoom_main').flickity('select',ncurrent);
//     setTimeout(function(){$("#divzoom").css({'opcaity': 1,'visibility':'visible'})},50);
//   });
//   $(document).on('click','#closedivZoom', function(event) {
//     $("#divzoom").hide();
//     $("body").removeClass("open_layer");
//     $('.divzoom_main').flickity('select',0);
//     //$('.divzoom_main').slick('unslick');
//   });