package com.global.kapla.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class CustomAuthSuccessHandler implements AuthenticationSuccessHandler{

	 private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		HttpSession session = request.getSession();
		String userId = authentication.getName();
		session.setAttribute("id", userId);
		
		String returnPage = (String) request.getSession().getAttribute("returnPage");
		//이전 페이지가 존재하고 회원가입페이지가 아니라면 이전페이지로 리다이렉트
		if (returnPage != null && !returnPage.contains("signup")) {
			session.removeAttribute("returnPage");
			redirectStrategy.sendRedirect(request, response, returnPage);
		}
		else {
			response.sendRedirect("/");
		}
	}
}
