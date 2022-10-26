package xyz.itwill.whitehouse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.whitehouse.dto.Test;
import xyz.itwill.whitehouse.mapper.TestMapper;

@Repository
@RequiredArgsConstructor
public class TestDAOImpl implements TestDAO{

	private final SqlSession sqlSession;

	@Override
	public Test selectTest(Test test) {
		return sqlSession.getMapper(TestMapper.class).selectTest(test);
	}

	@Override
	public List<Test> selectTestList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(TestMapper.class).selectTestList();
	}

	@Override
	public List<Test> selectTestStatusList(String selectNum) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(TestMapper.class).selectTestStatusList(selectNum);
	}

}
