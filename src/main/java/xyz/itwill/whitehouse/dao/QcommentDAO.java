package xyz.itwill.whitehouse.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Qcomment;

public interface QcommentDAO {
	int insertQcomment(Qcomment qcomment);
	int updateQcomment(Qcomment qcomment);
	int deleteQcomment(int cNum);
	int deleteQnacomment(int cQnum);
	int selectCountQcomment(int cQnum);
	List<Qcomment> selectQcommentList(Map<String, Object> map);
}
