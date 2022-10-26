package xyz.itwill.whitehouse.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Image;
import xyz.itwill.whitehouse.dto.Qna;

public interface QnaMapper {
	int insertQna(Qna qna);
	int updateQna(Qna qna);
	int deleteQna(int qNum); 
	int selectQnaCount();
	int selectQnaSearchCount(String qTitle);
	Qna selectQna(int qNum);
	List<Qna> selectQnaList(Map<String, Object>map);
	List<Qna> selectQnaSearchList(Map<String, Object>map);
	
	int insertQnaImage(Image image);
}
