package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.service.BoardService;
import com.example.demo.vo.BoardVo;
import com.example.demo.vo.CommentVo;

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
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String Insert() throws Exception{
		return "insert";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String userInsert(BoardVo vo) throws Exception{
		service.insert(vo);
		return "redirect:board";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String getDtail(Model model, int no){
		BoardVo data = service.detail(no);
		service.updateHit(no);
		List<CommentVo> commentList = service.getCommentList(no);
		model.addAttribute("commentList", commentList);
		model.addAttribute("data", data);
		return "detail";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String getUpdate(int no, Model model) throws Exception{
		BoardVo data = service.detail(no);
		model.addAttribute("data", data);
		return "update";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String getuserUpdate(BoardVo vo) throws Exception{
		service.update(vo);
		return "redirect:board";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(String no) throws Exception{
		service.delete(no);
		return "redirect:board";
	}
	
	@RequestMapping(value="/deleteComment", method=RequestMethod.GET)
	public String deleteComment(String no) throws Exception{
		service.deleteComment(no);
		return "redirect:detail?no="+no;
	}
	
	@RequestMapping(value = "/delete")
	public String ajaxTest(HttpServletRequest request) {
		String[] ajaxMsg = request.getParameterValues("valueArr");
		int size = ajaxMsg.length;
		for(int i=0; i < size; i++) {
			service.delete(ajaxMsg[i]);
		}
		return "redirect:board";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(String type, String keyword, Model model){
		List<BoardVo> searchList = service.search(type, keyword);
		model.addAttribute("searchList", searchList);
		return "search";
	}	
	
	@RequestMapping(value = "/commentWrite", method = RequestMethod.POST)
	public String commentWrite(int no, String content) throws Exception{
		service.commentWrite(no, content);
		String url="redirect:detail?no="+Integer.toString(no);
		return url;
	}
}
