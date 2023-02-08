var swatch_size = parseInt($('#add-item-form .select-swatch').children().size());
      jQuery(document).on('click','#add-item-form .swatch input', function(e) {  
        e.preventDefault();
        var $this = $(this);
        var _available = '';
        $this.parent().siblings().find('label').removeClass('sd');
        $this.next().addClass('sd');
        var name = $this.attr('name');
        var value = $this.val();
        $('#add-item-form select[data-option='+name+']').val(value).trigger('change');
        if(swatch_size == 2){
          if(name.indexOf('1') != -1){
            $('#add-item-form #variant-swatch-1 .swatch-element').find('input').prop('disabled', false);
            $('#add-item-form #variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
            $('#add-item-form #variant-swatch-1 .swatch-element label').removeClass('sd');
            $('#add-item-form #variant-swatch-1 .swatch-element').removeClass('soldout');
            $('#add-item-form .selector-wrapper .single-option-selector').eq(1).find('option').each(function(){
              var _tam = $(this).val();
              $(this).parent().val(_tam).trigger('change');
              if(check_variant){
                if(_available == '' ){
                  _available = _tam;
                }
              }else{
                $('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_tam+'"]').addClass('soldout');
                $('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_tam+'"]').find('input').prop('disabled', true);
              }
            })
            $('#add-item-form .selector-wrapper .single-option-selector').eq(1).val(_available).trigger('change');
            $('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_available+'"] label').addClass('sd');
          }
        }
        else if (swatch_size == 3){
          var _count_op2 = $('#add-item-form #variant-swatch-1 .swatch-element').size();
          var _count_op3 = $('#add-item-form #variant-swatch-2 .swatch-element').size();
          if(name.indexOf('1') != -1){
            $('#add-item-form #variant-swatch-1 .swatch-element').find('input').prop('disabled', false);
            $('#add-item-form #variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
            $('#add-item-form #variant-swatch-1 .swatch-element label').removeClass('sd');
            $('#add-item-form #variant-swatch-1 .swatch-element').removeClass('soldout');
            $('#add-item-form #variant-swatch-2 .swatch-element label').removeClass('sd');
            $('#add-item-form #variant-swatch-2 .swatch-element').removeClass('soldout');
            var _avi_op1 = '';
            var _avi_op2 = '';
            $('#add-item-form #variant-swatch-1 .swatch-element').each(function(ind,value){
              var _key = $(this).data('value');
              var _unavi = 0;
              $('#add-item-form .single-option-selector').eq(1).val(_key).change();
              $('#add-item-form #variant-swatch-2 .swatch-element label').removeClass('sd');
              $('#add-item-form #variant-swatch-2 .swatch-element').removeClass('soldout');
              $('#add-item-form #variant-swatch-2 .swatch-element').find('input').prop('disabled', false);
              $('#add-item-form #variant-swatch-2 .swatch-element').each(function(i,v){
                var _val = $(this).data('value');
                $('#add-item-form .single-option-selector').eq(2).val(_val).change();
                if(check_variant == true){
                  if(_avi_op1 == ''){
                    _avi_op1 = _key;
                  }
                  if(_avi_op2 == ''){
                    _avi_op2 = _val;
                  }
                  //console.log(_avi_op1 + ' -- ' + _avi_op2)
                }else{
                  _unavi += 1;
                }
              })
              if(_unavi == _count_op3){
                $('#add-item-form #variant-swatch-1 .swatch-element[data-value = "'+_key+'"]').addClass('soldout');
                setTimeout(function(){
                  $('#add-item-form #variant-swatch-1 .swatch-element[data-value = "'+_key+'"] input').attr('disabled','disabled');
                })
              }
            })
            $('#add-item-form #variant-swatch-1 .swatch-element[data-value="'+_avi_op1+'"] input').click();
          }
          else if(name.indexOf('2') != -1){
            $('#add-item-form #variant-swatch-2 .swatch-element label').removeClass('sd');
            $('#add-item-form #variant-swatch-2 .swatch-element').removeClass('soldout');
            $('#add-item-form .selector-wrapper .single-option-selector').eq(2).find('option').each(function(){
              var _tam = $(this).val();
              $(this).parent().val(_tam).trigger('change');
              if(check_variant){
                if(_available == '' ){
                  _available = _tam;
                }
              }else{
                $('#add-item-form #variant-swatch-2 .swatch-element[data-value="'+_tam+'"]').addClass('soldout');
                $('#add-item-form #variant-swatch-2 .swatch-element[data-value="'+_tam+'"]').find('input').prop('disabled', true);
              }
            })
            $('#add-item-form .selector-wrapper .single-option-selector').eq(2).val(_available).trigger('change');
            $('#add-item-form #variant-swatch-2 .swatch-element[data-value="'+_available+'"] label').addClass('sd');
          }
        }
        else{
          
        }
      })
      $(document).ready(function(){
        var _chage = '';
        $('#add-item-form .swatch-element[data-value="'+$('#add-item-form .selector-wrapper .single-option-selector').eq(0).val()+'"]').find('input').click();
        $('#add-item-form .swatch-element[data-value="'+$('#add-item-form .selector-wrapper .single-option-selector').eq(1).val()+'"]').find('input').click();
        if(swatch_size == 2){
          var _avi_op1 = '';
          var _avi_op2 = '';
          var _count = $('#add-item-form #variant-swatch-1 .swatch-element').size();
          $('#add-item-form #variant-swatch-0 .swatch-element').each(function(ind,value){
            var _key = $(this).data('value');
            var _unavi = 0;
            $('#add-item-form .single-option-selector').eq(0).val(_key).change();
            $('#add-item-form #variant-swatch-1 .swatch-element').each(function(i,v){
              var _val = $(this).data('value');
              $('#add-item-form .single-option-selector').eq(1).val(_val).change();
              if(check_variant == true){
                if(_avi_op1 == ''){
                  _avi_op1 = _key;
                }
                if(_avi_op2 == ''){
                  _avi_op2 = _val;
                }
              }else{
                _unavi += 1;
              }
            })
            if(_unavi == _count){
              $('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key+'"]').addClass('soldout');
              $('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key+'"]').find('input').attr('disabled','disabled');
            }
          })
          $('#add-item-form #variant-swatch-1 .swatch-element[data-value = "'+_avi_op2+'"] input').click();
          $('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_avi_op1+'"] input').click();
        }
        else if(swatch_size == 3){
          var _avi_op1 = '';
          var _avi_op2 = '';
          var _avi_op3 = '';
          var _size_op2 = $('#add-item-form #variant-swatch-1 .swatch-element').size();
          var _size_op3 = $('#add-item-form #variant-swatch-2 .swatch-element').size();
      
          $('#add-item-form #variant-swatch-0 .swatch-element').each(function(ind,value){
            var _key_va1 = $(this).data('value');
            var _count_unavi = 0;
            $('#add-item-form .single-option-selector').eq(0).val(_key_va1).change();
            $('#add-item-form #variant-swatch-1 .swatch-element').each(function(i,v){
              var _key_va2 = $(this).data('value');
              var _unavi_2 = 0;
              $('#add-item-form .single-option-selector').eq(1).val(_key_va2).change();
              $('#add-item-form #variant-swatch-2 .swatch-element').each(function(j,z){
                var _key_va3 = $(this).data('value');
                $('#add-item-form .single-option-selector').eq(2).val(_key_va3).change();
                if(check_variant == true){
                  if(_avi_op1 == ''){
                    _avi_op1 = _key_va1;
                  }
                  if(_avi_op2 == ''){
                    _avi_op2 = _key_va2;
                  }
                  if(_avi_op3 == ''){
                    _avi_op3 = _key_va3;
                  }
                }else{
                  _unavi_2 += 1;
                }
              })
              if(_unavi_2 == _size_op3){
                _count_unavi += 1;
              }
            })
            if(_size_op2 == _count_unavi){
              $('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key_va1+'"]').addClass('soldout');
              $('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_key_va1+'"]').find('input').attr('disabled','disabled');
            }
          })
          $('#add-item-form #variant-swatch-0 .swatch-element[data-value = "'+_avi_op1+'"] input').click();
        }
      });
      $(document).ready(function(){
        var vl = $('#add-item-form .swatch .color input').val();
        $('#add-item-form .swatch .color input').parents(".swatch").find(".header span").html(vl);
        $("#add-item-form .select-swap .color" ).hover(function() { 
          var value = $( this ).data("value");
          $(this).parents(".swatch").find(".header span").html( value );
        },function(){
          var value = $("#add-item-form .select-swap .color label.sd span").html();
          $(this).parents(".swatch").find(".header span").html( value );
        });
      });
      $(document).ready(function(){
        var infoHeight = $('.description-content').innerHeight();
        if($(window).width() < 992 ){
          $('.description-content').addClass('short');
          $('body').append("<style>.description-content.open{ height:"+(infoHeight+70)+"px !important; }</style>");
        }
      
        $(document).on("click","#detail_more",function(){
          $(this).toggleClass("open").parent().toggleClass("open");
          ($(this).hasClass('open'))?$(this).find("span").html("Rút gọn"):$(this).find("span").html("Xem thêm");
        });
      });
      