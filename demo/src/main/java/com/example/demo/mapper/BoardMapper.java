package com.example.demo.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.vo.BoardVo;
import com.example.demo.vo.CommentVo;
import com.example.demo.vo.CriteriaVo;

@Repository
@Mapper
public interface BoardMapper {
   public List<BoardVo> list();
   public List<Map<String,Object>> boardList(CriteriaVo cri) throws Exception;
   int boardListCnt();
   void insert(BoardVo vo);
   BoardVo detail(int no);
   void update(BoardVo vo);
   void delete(String no);
   void updateHit(int no);
   List<BoardVo> search(String type,String keyword);
   void commentWrite(int no, String content);
   List<CommentVo> getCommentList(int no);
   void deleteComment(String no);
}