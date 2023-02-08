$(document).ready(function () {

    $(window).scroll(function () {
        var aaa = screen.width;
        if (aaa > 1111) {
            var height = $(window).scrollTop();
            // console.log("height", height);
            // console.log("heading:", heading);
            // if (height > 700 && height < 4300) {
            //     $('.product-content-desc').css({
            //        "position":"fixed",
            //        "right": "0",
            //        "top": "100px",
            //        "transition": "all 0.4s"

            //     });

            // } 
            // if(height >4300)  {
            //     $('.product-content-desc').css({
            //         "z-index": "-1",
            //         "transition": "all 0.4s"

            //     });
            // }
            // else{
            //     $('.product-content-desc').css({
            //         "z-index": "9999",
            //         "transition": "all 0.4s"

            //     });
            // }
        }
    });

    // click img detailproduct
    $(".product-gallery__thumb").click(function (e) {
        $('.product-gallery__thumb').removeClass('active');
        var b = $(this).attr('class');
        console.log(b);
        $(this).addClass('active');
        e.stopPropagation();
        var a = b + "-placeholder";
        console.log(a);

        var hrefAttr = $('.' + a).attr('data-image');
        console.log(hrefAttr);



    });
    var id1 = 1
    $('.product-gallery__thumb').click(function (e) {
        e.preventDefault();
        id1 = $(this).attr('id') + 'a';
        // var offset = $('#'+ id1).offset();
        console.log(id1);
        var elmnt = document.getElementById('' + id1);
        elmnt.scrollIntoView({
            block: 'start',
            behavior: 'smooth',
            inline: 'start'
        });



    });
    var ac = screen.width;
    if (ac < 768) {
        $('.product-content-desc').css({
            "position": "relative",
        })
    }
    $('.owl-product1').owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        dots: true,
        navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    })
    $('.zoom-in').click(function (e) {
        e.preventDefault();
        $('.product-zoom11').slideDown();
        e.stopPropagation();
        // $('html,body').fadeOut();



    });
    $('.divclose').click(function (e) {
        e.preventDefault();
        $('.product-zoom11').slideUp();
        e.stopPropagation();

    });
    $('.registratior_custom').fadeIn(200);
    $('.x-close').click(function (e) {
        e.preventDefault();
        $('.registratior_custom').fadeOut(0);
    });


});