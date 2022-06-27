package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.vo.BoardVo;

@Repository
@Mapper
public interface BoardMapper {
   List<BoardVo> list();
   void insert(BoardVo vo);
   BoardVo detail(int no);
   void update(BoardVo vo);
   void delete(String no);
   void updateHit(int no);
   List<BoardVo> search();
}