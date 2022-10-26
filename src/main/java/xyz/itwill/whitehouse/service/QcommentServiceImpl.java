package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.QcommentDAO;
import xyz.itwill.whitehouse.dto.Qcomment;

@Service
@RequiredArgsConstructor
public class QcommentServiceImpl implements QcommentService{
	private final QcommentDAO qcommentDAO;
	
	@Override
	public void addQcomment(Qcomment qcomment) {
		qcommentDAO.insertQcomment(qcomment);
	}
	
	@Override
	public void modifyQcomment(Qcomment qcomment) {
		qcommentDAO.updateQcomment(qcomment);
	}
	
	@Override
	public void removeQComment(int cNum) {
		qcommentDAO.deleteQcomment(cNum);
	}
	
	@Override
	public void removeQnacomment(int cQum) {
		qcommentDAO.deleteQnacomment(cQum);
	}
	
	@Override
	public int getCountQcomment(int cQum) {
		return qcommentDAO.selectCountQcomment(cQum);
	}
	
	@Override
	public List<Qcomment> getQcommentList(Map<String, Object> map) {
		return qcommentDAO.selectQcommentList(map);
	}
}
