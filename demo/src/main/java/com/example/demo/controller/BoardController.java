package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.service.BoardService;
import com.example.demo.vo.BoardVo;

@Controller
public class BoardController {
    @Autowired
    public BoardService service;
    
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String getList(Model model){
		List<BoardVo> list = service.list();
		model.addAttribute("list", list);
		return "board";
	}	
}
