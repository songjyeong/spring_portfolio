package xyz.itwill.whitehouse.dao;

import java.util.List;

import xyz.itwill.whitehouse.dto.Test;

public interface TestDAO {
	Test selectTest(Test test);
	List<Test> selectTestList();
	List<Test> selectTestStatusList(String selectNum);
}
