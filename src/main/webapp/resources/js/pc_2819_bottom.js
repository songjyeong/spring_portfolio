/*     18291 : 이미지 슬라이드 (메인용)      */
jQuery(function($) {
	var
		def = $.Deferred()
		$owl = $('#owl__18291__')
	;

	changeSrc($owl,def);

	$(window).on('resize',function(){
		changeSrc($owl,def);
	});

	def.promise().done(function(){
		loadCarousel($owl);
	});

	function changeSrc($owl,def){
		if(Modernizr.mq('only all and (min-width:768px)')==true){
			$owl.find('.main_img').each(function(){
				$(this).attr('src',$(this).attr('data-src'));
			});
		}else{
			$owl.find('.main_img').each(function(){
				$(this).attr('src',$(this).attr('data-src-m'));
			});
		}
		def.resolve(true);
	}

	function loadCarousel($owl){
		$owl.owlCarousel({
			margin: 0,								// 이미지 간격
			loop: true,								// 무한 반복
			center: false,							// 액티브 슬라이드 가운데 정렬
			mouseDrag: true,						// 마우스 드레그 사용
			touchDrag: true,						// 터치 드레그 사용
			stagePadding: 0,						// 스테이지 여백 (좌우 슬라이드 노출)
			nav: false,					// 방향 네비게이션
			dots: true,				// 하단 네비게이션
			dotsEach: false,						// 하단 네비게이션 (페이지별 출력,항목별 출력)
			autoplay: true,							// 자동 재생
			autoplayTimeout: 5000,					// 자동 재생 속도
			smartSpeed: 300,						// 슬라이드 속도
			responsiveRefreshRate: 0,				// 반응형 체크 시간
			startPosition: 0,						// 시작 슬라이드 번호
			URLhashListener: false,					// #URL 로 액티브 슬라이드 동작
			autoplayHoverPause: false,				// 마우스 오버시 일시정지
			responsiveClass: false,					// 반응형 class명 사용 (owl-reponsive-0)
			navContainer: false,					// 방향 네비게이션 커스터마이징
			dotsContainer: '#owl_dots__18291__',					// 하단 네비게이션 커스터마이징
			items:1,								// 한 화면 출력수
			slideBy:1,								// 한번에 슬라이드 되는 수
			animateOut: 'fadeOut'	// 슬라이드(''), 페이드(fadeOut)
		});
	}

	$('.scroll_down__18291__ > a').on('click', function(){
		var $scroll_top = 0;
		if($('#header').outerHeight() > 200){
			$scroll_top = $('.pm-slide_wrap__18291__').height();
		}else{
			$scroll_top = $('.pm-slide_wrap__18291__').height() - $('#header').outerHeight();
		}

		$('body, html').animate({
			scrollTop: $scroll_top
		}, 800);
	});
});

/*     18514 : 타이틀 텍스트      */


/*     18515 : 장문 텍스트      */


/*     18517 : 펜션 객실 목록 - 슬라이드 (기본형)      */
jQuery(function($) {
	$('#owl__18517__').owlCarousel({
		margin: 0,								// 이미지 간격
		loop: true,								// 무한 반복
		center: false,							// 액티브 슬라이드 가운데 정렬
		mouseDrag: true,						// 마우스 드레그 사용
		touchDrag: true,						// 터치 드레그 사용
		stagePadding: 0,						// 스테이지 여백 (좌우 슬라이드 노출)
		nav: false,					// 방향 네비게이션
		dots: true,				// 하단 네비게이션
		dotsEach: false,						// 하단 네비게이션 (페이지별 출력,항목별 출력)
		autoplay: true,							// 자동 재생
		autoplayTimeout: 5000,					// 자동 재생 속도
		smartSpeed: 250,						// 슬라이드 속도
		responsiveRefreshRate: 0,				// 반응형 체크 시간
		startPosition: 0,						// 시작 슬라이드 번호
		URLhashListener: false,					// #URL 로 액티브 슬라이드 동작
		autoplayHoverPause: false,				// 마우스 오버시 일시정지
		responsiveClass: false,					// 반응형 class명 사용 (owl-reponsive-0)
		navContainer: false,					// 방향 네비게이션 커스터마이징
		dotsContainer: false,					// 하단 네비게이션 커스터마이징
		items:1,								// 한 화면 출력수
		slideBy:1,								// 한번에 슬라이드 되는 수
		animateOut: ''	// 슬라이드(''), 페이드(fadeOut)
	})
});

/*     18516 : 실선      */


/*     18522 : 타이틀 텍스트      */


/*     18523 : 장문 텍스트      */


/*     18524 : 이미지 리스트 (타일형)      */


/*     18526 : 타이틀 텍스트      */


/*     18527 : 장문 텍스트      */


/*     18528 : 이미지 리스트 (타일형)      */


/*     18529 : 이미지      */


/*     18530 : 이미지      */


/*     18554 : 셀 설정      */
jQuery(function($){
	var $this = $('.cell_option__18554__');
	$this.closest('.col > div').addClass('col__18554__');
})

/*     18532 : 공백      */


/*     18531 : 최근 게시글 - 목록형      */


/*     18555 : 셀 설정      */
jQuery(function($){
	var $this = $('.cell_option__18555__');
	$this.closest('.col > div').addClass('col__18555__');
})

/*     18536 : 공백      */


/*     18533 : 이미지 리스트 (타일형)      */


/*     18556 : 셀 설정      */
jQuery(function($){
	var $this = $('.cell_option__18556__');
	$this.closest('.col > div').addClass('col__18556__');
})

/*     18557 : 구글 지도 (주소 직접 입력)      */
// 타이틀, 주소, 가로, 세로, 줌
// 주소를 입력하지 않으면 접속한 회원의 현재위치를 출력한다.
google_map_addr("WHITEHOUSE","서울 강남구 테헤란로 124",600,400,30,'google_map__18557__');

