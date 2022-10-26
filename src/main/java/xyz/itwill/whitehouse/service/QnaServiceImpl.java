package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.QnaDAO;
import xyz.itwill.whitehouse.dto.Image;
import xyz.itwill.whitehouse.dto.Qna;

@Service
@RequiredArgsConstructor
public class QnaServiceImpl implements QnaService {
	private final QnaDAO qnaDAO;
	
	@Override
	public void addQna(Qna qna) {
		qnaDAO.insertQna(qna);		
	}
	
	@Override
	public void modifyQna(Qna qna) {
		qnaDAO.updateQna(qna);		
	}
	
	@Override
	public void removeQna(int qNum) {
		qnaDAO.deleteQna(qNum);
	}
	
	@Override
	public int getQnaCount() {
		return qnaDAO.selectQnaCount();
	}
	
	@Override
	public int getQnaSearchCount(String qTitle) {
		return qnaDAO.selectQnaSearchCount(qTitle);
	}
	
	@Override
	public Qna getQna(int qNum) {
		return qnaDAO.selectQna(qNum);
	}
	
	@Override
	public List<Qna> getQnaList(Map<String, Object> map) {
		return qnaDAO.selectQnaList(map);
	}
	
	@Override
	public List<Qna> getQnaSearchList(Map<String, Object> map) {
 		return qnaDAO.selectQnaSearchList(map);
	}

	@Override
	public void addQnaImage(Image image) {
		qnaDAO.insertQnaImage(image);		
	}
}
