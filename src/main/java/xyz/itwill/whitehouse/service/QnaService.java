package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Image;
import xyz.itwill.whitehouse.dto.Qna;

public interface QnaService {
	void addQna(Qna qna);
	void modifyQna(Qna qna);
	void removeQna(int qNum);
	int getQnaCount();
	int getQnaSearchCount(String qTitle);
	Qna getQna(int qNum);
	List<Qna> getQnaList(Map<String, Object> map);
	List<Qna> getQnaSearchList(Map<String, Object> map);
	
	void addQnaImage(Image image);

}
