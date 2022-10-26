/*     18630 : 타이틀 텍스트      */


/*     18629 : 타이틀 텍스트      */


/*     18635 : 이미지 리스트      */
jQuery(function($){

	$(window).on('load resize', function(){
		item_inner_h();
	});

	function item_inner_h(){
		var $item_inner = $('.img_tile__18635__ .item .item_inner');
		var $max_item_h = 0;

		$item_inner.removeAttr('style');
		$item_inner.each(function(){
			if($max_item_h < $(this).outerHeight()){
				$max_item_h = $(this).outerHeight();
			}
		});
		$item_inner.height($max_item_h);
	}
});

/*     18632 : 실선      */


/*     18633 : 타이틀 텍스트      */


/*     18634 : 타이틀 텍스트      */


/*     18631 : 이미지 리스트      */
jQuery(function($){

	$(window).on('load resize', function(){
		item_inner_h();
	});

	function item_inner_h(){
		var $item_inner = $('.img_tile__18631__ .item .item_inner');
		var $max_item_h = 0;

		$item_inner.removeAttr('style');
		$item_inner.each(function(){
			if($max_item_h < $(this).outerHeight()){
				$max_item_h = $(this).outerHeight();
			}
		});
		$item_inner.height($max_item_h);
	}
});

