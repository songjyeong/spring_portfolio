package xyz.itwill.whitehouse.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import xyz.itwill.whitehouse.dto.Member;


//Interceptor 클래스 : Front Controller에 의해 요청 처리 메소드가 호출되어 실행되기 전후에
//삽입되어 동작될 기능을 제공하는 클래스
// => Interceptor 클래스는 HandlerInterceptor 인터페이스를 상속받아 작성
// => Spring Bean Configuration File(servlet-context.xml)에서 Spring Bean으로 등록

//관리자 관련 권한 처리를 위한 Interceptor 클래스
// => 요청 처리 메소드의 명령이 실행되기 전에 비로그인 사용자이거나 관리자가 아닌 사용자가 페이지를
//요청한 경우 에러페이지로 이동하여 응답 처리
public class AdminAuthInterceptor implements HandlerInterceptor {
	//preHandle : 요청 처리 메소드의 명령이 실행되기 전에 동작될 명령을 작성하는 메소드
	// => 요청 처리 전에 작업할 명령을 작성하거나 요청정보(리퀘스트 메시지)를 변경할 경우 사용
	// => false 반환 : 요청 처리 메소드의 명령 미실행, true : 요청 처리 메소드의 명령 실행
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session=request.getSession();

		Member loginUserinfo=(Member)session.getAttribute("loginMember");

		if(loginUserinfo==null || loginUserinfo.getStatus()!=9) {
			//request.getRequestDispatcher("userinfo/user_error.jsp").forward(request, response);
			//return false;

			throw new Exception("비정상적인 요청");
		}

		return true;
	}

	//postHandle : 요청 처리 메소드의 명령이 실행되고 뷰가 생성되기 전에 동작될 명령을 작성하는 메소드
	// => ModelAndView 객체를 제공받아 ViewName 및 Model 객체의 속성값 변경 가능
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	//afterCompletion : 요청 처리 메소드의 명령이 실행되고 뷰에서 최종 결과가 생성된 후  동작될 명령을 작성하는 메소드
	// => 응답정보(리스폰즈 메세지)를 변경할 경우 사용
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
}
