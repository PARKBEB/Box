package com.example.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.BoardMapper;
import com.example.demo.vo.BoardVo;
import com.example.demo.vo.CommentVo;
import com.example.demo.vo.CriteriaVo;

@Service
public class BoardService{

    @Autowired
    public BoardMapper mapper;
    
    public int boardListCnt(){
    	return mapper.boardListCnt();
    }
    
    public List<BoardVo> list(){
    	return mapper.list();
    }
    public List<Map<String, Object>> boardList(CriteriaVo cri) throws Exception{
    	return mapper.boardList(cri);
    }
    
    public void insert(BoardVo vo) {
    	mapper.insert(vo);
    }
    
    public BoardVo detail(int no) {
    	return mapper.detail(no);
    }
    
    public void update(BoardVo vo) {
    	mapper.update(vo);
    }
    
    public void delete(String no) {
    	mapper.delete(no);
    }
    
    public void updateHit(int no) {
    	mapper.updateHit(no);
    }
    
    public List<BoardVo> search(String type,String keyword){
    	return mapper.search(type, keyword);
    }
    
    public void commentWrite(int no, String content) {
    	mapper.commentWrite(no, content);
    }
    
    public List<CommentVo> getCommentList(int no){
    	return mapper.getCommentList(no);
    }
    
    public void deleteComment(int no) {
    	mapper.deleteComment(no);
    }
}
