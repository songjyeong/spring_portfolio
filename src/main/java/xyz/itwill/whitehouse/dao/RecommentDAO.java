package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;

import xyz.itwill.whitehouse.dto.Recomment;

public interface RecommentDAO {
	int insertNewRecommnet(Recomment recommnet);
	int insertRecomment(Recomment recommnet);
	int updateNewStepup(Recomment recomment);
	int updateStepup(Recomment recommnet);
	int updateRecomment(Recomment recommnet);
	int removeRecomment(int reNum);
	int removeAllRecomment(int reVnum);
	Recomment selectRecomment(int reNum);
	List<Recomment> selectRecommentList(Map<String, Object>map);
}
