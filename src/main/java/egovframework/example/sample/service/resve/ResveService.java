package egovframework.example.sample.service.resve;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.resve.impl.ResveMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service
public class ResveService {

	@Autowired
    private ResveMapper mapper;

	/**
	 * 예약 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<EgovMap> selectResveList() throws Exception {
		 return mapper.selectResveList();
	}

	/**
	 * 예약 등록
	 * @param vo
	 * @throws Exception
	 */
	public void insertResve(ResveVO vo) throws Exception {
		mapper.insertResve(vo);
	}

	/**
	 * 예약 조회
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	public ResveVO selectResve(ResveVO vo) throws Exception {
		return mapper.selectResve(vo);
	}

	/**
	 * 예약 삭제
	 * @param vo
	 * @throws Exception
	 */
	public void deleteResve(ResveVO vo) throws Exception {
		mapper.deleteResve(vo);
	}

	/**
	 * 예약 수정
	 * @param vo
	 * @throws Exception
	 */
	public void updateResve(ResveVO vo) throws Exception {
		mapper.updateResve(vo);
	}

	/**
	 * 예약 존재하는 연도 조회
	 * @throws Exception
	 */
	public ArrayList<String> selectYears() throws Exception {
		return mapper.selectYears();
	}

	/**
	 * Bar Chart 데이터 조회
	 * @param vo
	 * @throws Exception
	 */
	public List<ChartVO> selectBarData(ChartVO vo) throws Exception {
		return mapper.selectBarData(vo);
	}

	/**
	 * Pie Chart 데이터 조회
	 * @param vo
	 * @throws Exception
	 */
	public List<ChartVO> selectPieData(ChartVO vo) throws Exception {
		return mapper.selectPieData(vo);
	}
}
