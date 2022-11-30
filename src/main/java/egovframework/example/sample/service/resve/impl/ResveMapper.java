package egovframework.example.sample.service.resve.impl;

import java.util.ArrayList;
import java.util.List;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.resve.ChartVO;
import egovframework.example.sample.service.resve.ResveVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * sample에 관한 데이터처리 매퍼 클래스
 *
 * @author  표준프레임워크센터
 * @since 2014.01.24
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *
 *          수정일          수정자           수정내용
 *  ----------------    ------------    ---------------------------
 *   2014.01.24        표준프레임워크센터          최초 생성
 *
 * </pre>
 */
public interface ResveMapper {

	/**
	 * 예약 목록을 조회한다.
	 * @param searchVO - 조회할 정보가 담긴 VO
	 * @return 글 목록
	 * @exception Exception
	 */
	List<EgovMap> selectResveList() throws Exception;

	/**
	 * 예약 등록
	 * @param vo - 등록할 정보가 담긴 SampleVO
	 * @return 등록 결과
	 * @exception Exception
	 */
	void insertResve(ResveVO vo) throws Exception;

	/**
	 * 예약 상세보기
	 * @param searchVO
	 * @return
	 * @throws Exception
	 */
	ResveVO selectResve(ResveVO vo) throws Exception;

	/**
	 * 예약 삭제
	 * @param vo
	 * @throws Exception
	 */
	void deleteResve(ResveVO vo) throws Exception;

	/**
	 * 예약 수정
	 * @param vo
	 * @throws Exception
	 */
	void updateResve(ResveVO vo) throws Exception;


	/**
	 * 예약 존재하는 연도 조회
	 * @throws Exception
	 */
	ArrayList<String> selectYears() throws Exception;

	/**
	 * Bar Chart 데이터 조회
	 * @param vo
	 * @throws Exception
	 */
	List<ChartVO> selectBarData(ChartVO vo) throws Exception;

	/**
	 * Pie Chart 데이터 조회
	 * @param vo
	 * @throws Exception
	 */
	List<ChartVO> selectPieData(ChartVO vo) throws Exception;

}
