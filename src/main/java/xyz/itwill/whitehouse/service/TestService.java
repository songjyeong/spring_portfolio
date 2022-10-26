package xyz.itwill.whitehouse.service;

import java.util.List;

import xyz.itwill.whitehouse.dto.Test;

public interface TestService {
	Test getTest(Test test);
	List<Test> getTestList();
	List<Test> selectTestStatusList(String selectNum);

}
