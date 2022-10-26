package xyz.itwill.whitehouse.mapper;

import java.util.List;

import xyz.itwill.whitehouse.dto.Test;

public interface TestMapper {
	Test selectTest(Test test);
	List<Test> selectTestList();
	List<Test> selectTestStatusList(String selectNum);
}
