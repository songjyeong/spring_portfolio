package xyz.itwill.whitehouse.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.whitehouse.dto.Qcomment;

public interface QcommentService {
	void addQcomment(Qcomment qcomment);
	void modifyQcomment(Qcomment qcomment);
	void removeQComment(int cNum);
	void removeQnacomment(int cQum);
	int  getCountQcomment(int cQum);
	List<Qcomment> getQcommentList(Map<String , Object> map);
	
}
