/*     18668 : 이미지      */


/*     18669 : 공백      */


/*     18670 : 타이틀 텍스트      */


/*     18671 : 타이틀 텍스트      */


/*     18672 : 장문 텍스트      */


/*     18673 : 장문 텍스트      */


/*     18674 : 제목&내용 가로형      */


/*     18675 : 제목&내용 가로형      */


/*     18676 : 셀 설정      */
jQuery(function($){
	var $this = $('.cell_option__18676__');
	$this.closest('.col > div').addClass('col__18676__');
})

/*     18677 : 이미지 리스트 (타일형)      */
jQuery(function($){
	resize_check();

	$(window).on('resize', function(){
		resize_check();
	});

	function resize_check(){

		if(Modernizr.mq('only screen and (min-width: 1024px)')==true){

			index_check(3);

		}else if(Modernizr.mq('only screen and (min-width: 768px)')==true){

			index_check(3);

		}else{

			index_check(3);

		}
	}

	//index 체크 후 클래스 추가
	function index_check(num){
		var $object = $('.img_tile__18677__');
		var index_num = 0;

		$object.find('.item').removeClass('even_item');

		if(num > 1){
			$object.find('.item').each(function(index){
				index++;
				index_num++;

				//홀수일 때 index_num에 1추가 (줄 바뀔 때 클래스가 다르게 추가해야 해서)
				if(num % 2 != 0){
					if(index % num == 1 && index != 1){
						index_num++;
					}
				}

				if(index_num % 2 == 0){
					$(this).addClass('even_item');
				}

				//console.log(num);
				//console.log('index : ' + index + ' / index_num : ' + index_num);
			});
		}
	}
});

