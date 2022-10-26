$(function(){
	// 필수 스크립트
	// voice
	$("body").on({
		click : function(e){
			var onoff="on";
			if($(e.target).hasClass("state_voice_on")) onoff="off";
			SetCookie('bg_voice_onoff',onoff);
			if(onoff == 'on'){
				$("#voice_guide_wrap").addClass("off").removeClass("on");
			}else{
				$("#voice_guide_wrap").addClass("on").removeClass("off");
			}
			if(document.getElementById('bg_voice_player')){
				if(onoff == 'off'){
					// 현재 재생 중이면 stop() 처리
					document.getElementById('bg_voice_player').pause();
					document.getElementById('bg_voice_player').currentTime = 0;
				}else{
					// 다시 paly() 처리
					document.getElementById('bg_voice_player').play();
				}
			}
			return false;
		}
	}, "#voice_guide_wrap > a");

	//상단으로 이동
	$(window).on('scroll', function(){
		if($(window).scrollTop() > 300){
			$('#btn_site_top').addClass('on');
		}else{
			$('#btn_site_top').removeClass('on');
		}
	});

	$('#btn_site_top').click(function() {
		$('body, html').animate({
			scrollTop: 0
		}, 800);

		return false;
	});

	function mypage_snb(target){
		if(target.scrollLeft()<40){
			target.parent().find(".prev").hide();
		}else{
			target.parent().find(".prev").show();
		}
		if(target.scrollLeft()-40<target.find('.dep1').width()-target.parent().width()){
			target.parent().find(".next").show();
		}else{
			target.parent().find(".next").hide();
		}
	}
	$(".snb > div").scroll(function(){
		mypage_snb($(this));
	});
	mypage_snb($(".snb > div"));
	if($(".snb > div").find(".on").length>0) $(".snb > div").scrollLeft($(".snb > div").find(".on").offset().left-$(".snb > div").width()/2+$(".snb > div").find(".on").width()/2);

	//PC 상단바
	$(window).on('load scroll', function(){
		if($(window).scrollTop() > 0){
			$('#header').addClass('scroll_down');
		}else{
			$('#header').removeClass('scroll_down');
		}
	});

	var $header = $('#header');
	var $header_form = $('.header_form');
	var $lnb_p_all_wrap = $('.lnb_p_all_wrap');
	var $lnb_p_all_open = $lnb_p_all_wrap.find('.btn_lnb_all_p');
	var $lnb_p_all_close = $lnb_p_all_wrap.find('.btn_lnb_all_close');
	var $lnb_p_all = $('#lnb_p_all');
	var $lnb_all_li_max_h = 0;
	var $lnb_p = $('#lnb_p');
	var $gnb_list = $('.gnb_list');

	//all lnb
	$lnb_p_all_open.on('click', function(){
		if($header.hasClass('all_nav_view')){
			$header.removeClass('all_nav_view');
		}else{
			$header.addClass('all_nav_view');
			$header_form.removeClass('on');
			$gnb_list.removeClass('on');
			h_dep2_bg('remove');
		}

		lnb_all_wrap_h()
		lnb_all_dep1_max_h();
		return false;
	});

	$lnb_p_all_close.on('click', function(){
		if($header.hasClass('all_nav_view')){
			$header.removeClass('all_nav_view');
		}else{
			$header.addClass('all_nav_view');
		}
		return false;
	});

	$(window).on('resize', function(){
		lnb_all_wrap_h()
		lnb_all_dep1_max_h();
	});

	function lnb_all_dep1_max_h(){
		if($header.hasClass('all_nav_view')){
			$lnb_p_all.find('.dep1 > li').removeAttr('style');
			$lnb_p_all.find('.dep1 > li').each(function(){
				if($lnb_all_li_max_h < $(this).height()){
					$lnb_all_li_max_h = $(this).height();
				}
			});
			$lnb_p_all.find('.dep1 > li').height($lnb_all_li_max_h);
		}
	}

	//브라우저 높이에 비해 메뉴가 길 경우
	function lnb_all_wrap_h(){
		$lnb_p_all.removeAttr('style');
		var $lnb_all_h = $(window).height() - $header.height();

		if($header.height() + $lnb_p_all.height() > $(window).height()){
			$lnb_p_all.css('max-height', $lnb_all_h);
		}else{
			$lnb_p_all.removeAttr('style');
		}
	}

	//header search
	$header_form.find('.btn_header_form').on('click', function(){
		if($header_form.hasClass('on')){
			$header.removeClass('on');
			$header_form.removeClass('on');
			h_dep2_bg('remove');
			$lnb_p.find('.dep1 > li[role="toggle"] > div').removeAttr('style');
			$(this).parent().find('.search_p .search_form input[type=text]').blur();
		}else{
			$gnb_list.removeClass('on')
			$header.addClass('on');
			$header_form.addClass('on');
			h_dep2_bg('add');
			$(this).parent().find('.search_p .search_form input[type=text]').focus();
		}
		return false;
	});

	//lnb
	$lnb_p.on('mouseenter', function(){
		if(!$header_form.hasClass('on')&&!$gnb_list.hasClass('on')){
			$header.addClass('on');
		}
	});

	$lnb_p.on('mouseleave', function(){
		if(!$header_form.hasClass('on')&&!$gnb_list.hasClass('on')){
			$header.removeClass('on');
		}
	});

	$lnb_p.find('.dep1 > li[role="toggle"]').each(function(){
		$(this).on('mouseenter', function(){
			if(!$header_form.hasClass('on')&&!$gnb_list.hasClass('on')){
				h_dep2_bg('add');
				$(this).siblings().find('> div').hide();
				$(this).find('> div').show();

				var $dep2_offset = $(this).find('> div').offset().left + $(this).find('> div').width();

				if($dep2_offset > $header.outerWidth()){
					if($(this).find('> div').offset().left < $(this).find('> div').width()){
						$(this).find('> div').css('right', -($(this).find('> div').width() - $(this).find('> div').offset().left));
					}else if($dep2_offset > $(window).width()){
						$(this).find('> div').css('right', '0');
					}else{
						$(this).find('> div').css('right', -($(this).find('> div').offset().left - $(this).find('> div').width()));
					}
				}
			}
		});

		$(this).on('mouseleave', function(){
			if(!$header_form.hasClass('on')&&!$gnb_list.hasClass('on')){
				h_dep2_bg('remove');
				$(this).find('> div').removeAttr('style');
			}
		});
	});

	//gnb
	$gnb_list.find('.btn_gnb_list').on('click', function(){
		if($(this).parent().hasClass('on')){
			$header.removeClass('on');
			$(this).parent().removeClass('on');
			h_dep2_bg('remove');
		}else{
			$header_form.removeClass('on');
			$header.addClass('on');
			$(this).parent().addClass('on');
			h_dep2_bg('add');
		}
		return false;
	});

	$(window).on('resize', function(){
		if(Modernizr.mq('only screen and (min-width:1500px)')==true){
			if($gnb_list.hasClass('on')){
				$header.removeClass('on');
				$gnb_list.removeClass('on');
				h_dep2_bg('remove');
			}
		}
	});

	//dep2 bg
	function h_dep2_bg(state){
		if(state == 'add'){
			$('<div class="h_dep2_bg"></div>').appendTo('#header');
		}else if(state == 'remove'){
			$('.h_dep2_bg').remove();
		}
	}

	//mobile
	$('.m_toggle_btn').on('click',function(){
		if(!$(this).hasClass('on')){
			var $view_target = $(this).attr('data-target');
			$(this).addClass('on');
			$('#viewport').addClass('on ' + $view_target);
			$('#'+$view_target).find('.v_side_inner').height($(window).height() - $('#header').height());
			$header.removeClass('on');
			$header_form.removeClass('on');
		}
	});

	$('.viewport_side .btn_side_close').on('click', function(){
		$('#viewport').removeClass('on ' + $(this).parents('.viewport_side').attr('id'));
		$('.m_toggle_btn').removeClass('on');
	});

	//toggle
	$('.side_lnb [role=toggle] > a').on('click', function(e){
		var
		$li = $(this).parent()
		,$lis = $(this).closest('ul').children()
		,$active = $(this).parent().parent().children('.active')
		;
		if ($li.hasClass('active')){
			$li.removeClass('active');
		} else {
			$active.removeClass('active');
			$li.addClass('active');
		}
		return false;
	});
})