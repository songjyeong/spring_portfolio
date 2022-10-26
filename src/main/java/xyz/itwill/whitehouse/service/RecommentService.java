package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import xyz.itwill.whitehouse.dto.Recomment;

public interface RecommentService {
	void addNewRecomment(Recomment recomment);
	void addRecomment(Recomment recomment);
	void modifyNewStepup(Recomment recomment);
	void modifyStepup(Recomment recomment);
	void modifyRecomment(Recomment recomment);
	void removeRecomment(int reNum);
	void removeAllComment(int reVnum);
	Recomment getRecomment(int reNum);
	List<Recomment> getRecommentList(Map<String, Object>map);
	
}
