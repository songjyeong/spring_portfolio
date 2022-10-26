package xyz.itwill.whitehouse.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Qcomment;

public interface QcommentMapper {
	int insertQcomment(Qcomment qcomment);
	int updateQcomment(Qcomment qcomment);
	int deleteQcomment(int cNum);
	int deleteQnacomment(int cQnum);
	int selectCountQcomment(int cQnum);
	List<Qcomment> selectQcommentList(Map<String, Object> map);
}
