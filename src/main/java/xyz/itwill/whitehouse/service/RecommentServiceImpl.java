package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;


import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.RecommentDAO;
import xyz.itwill.whitehouse.dto.Recomment;

@Service
@RequiredArgsConstructor
public class RecommentServiceImpl implements RecommentService{
	private final RecommentDAO recommentDAO;
	
	@Override
	public void addNewRecomment(Recomment recomment) {
		recommentDAO.insertNewRecommnet(recomment);
	}

	@Override
	public void addRecomment(Recomment recomment) {
		recommentDAO.insertRecomment(recomment);
	}
	
	@Override
	public void modifyNewStepup(Recomment recomment) {
		recommentDAO.updateNewStepup(recomment);		
	}
	
	@Override
	public void modifyStepup(Recomment recomment) {
		recommentDAO.updateStepup(recomment);
	}
	
	@Override
	public void modifyRecomment(Recomment recomment) {
		recommentDAO.updateRecomment(recomment);
	}
	
	@Override
	public void removeRecomment(int reNum) {
		recommentDAO.removeRecomment(reNum);
	}
	
	@Override
	public void removeAllComment(int reVnum) {
		recommentDAO.removeAllRecomment(reVnum);
	}
	
	@Override
	public Recomment getRecomment(int reNum) {
		return recommentDAO.selectRecomment(reNum);
	}
	
	@Override
	public List<Recomment> getRecommentList(Map<String, Object> map) {
		return recommentDAO.selectRecommentList(map);
	}
}
