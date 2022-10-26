package xyz.itwill.whitehouse.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dao.TestDAO;
import xyz.itwill.whitehouse.dto.Test;

@Service
@RequiredArgsConstructor
public class TestServiceImpl implements TestService{

	private final TestDAO testDAO;
	
	@Override
	public Test getTest(Test test) {
		// TODO Auto-generated method stub
		return testDAO.selectTest(test);
	}

	@Override
	public List<Test> getTestList() {
		// TODO Auto-generated method stub
		return testDAO.selectTestList();
	}

	@Override
	public List<Test> selectTestStatusList(String selectNum) {
		// TODO Auto-generated method stub
		return testDAO.selectTestStatusList(selectNum);
	}

}
