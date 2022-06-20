package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.TestService;
import com.example.demo.vo.TestVo;

@Controller
public class TestController {
	@RequestMapping(value = "/home")
	public String home() {
		return "start.html";
	}
	
	@RequestMapping(value = "/valueTest", method = RequestMethod.GET)
	public String valueTest() {
		String value = "테스트 String";
		return value;
	}
		
	@Autowired
	TestService testService;

	@RequestMapping(value = "/test")
	public ModelAndView test() throws Exception{
	    ModelAndView mav = new ModelAndView("test");

	    List<TestVo> testList = testService.selectTest();
	    mav.addObject("list", testList);

	    return mav;
	}
}
