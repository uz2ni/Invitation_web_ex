package com.test.Builder.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AjaxCommandAction {
	// ajax 컨트롤러 수행 인터페이스
	String ajaxRequestPro (HttpServletRequest request, HttpServletResponse response);
}
