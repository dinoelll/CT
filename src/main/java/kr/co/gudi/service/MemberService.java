package kr.co.gudi.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.gudi.dao.MemberDAO;
import kr.co.gudi.dto.MemberDTO;

@Service
// mapper를 써주기 위한 설정
//@MapperScan(value= {"kr.co.gudi.dao"}) // 이 서비스에서는 이 영역의 inferface 를 이용해 mapper 와 연결한다.
public class MemberService {

	// 어쩌구? 12시 24분 10분쯤 ???
	@Autowired MemberDAO dao;
	
	Logger logger = LoggerFactory.getLogger(getClass());

	

	

	public int del(String id) {
		
		return dao.del(id);
	}

	public MemberDTO detail(String id) {
		
		return dao.detail(id);
	}

	public void update(HashMap<String, String> params) {
		
		dao.update(params);
		
	}

	
	// hash멤은 뭐가 들어갔는지 파악 이 안된다
	// dto 는 소스 파악 만으로 뭐가 잇는지 확이 가능해서 좋다.
	public ModelAndView join(MemberDTO dto) {
		int success = dao.join(dto);
		logger.info("success : " + success);
		String msg = "회원가입에 실패 했습니다.";
		String page = "joinForm";
		
		if(success > 0) {
			msg = "회원가입에 성공 했습니다.";
			page = "login";
					
			
		}
		
		//12t시7분 //38분
		ModelAndView mav = new ModelAndView();
		mav.setViewName(page);
		mav.addObject("msg",msg);
		
		return mav;
	}

	public String login(String id, String pw) {
	
		return dao.login(id, pw);
	}

	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("main");
		ArrayList<MemberDTO> list = dao.list();
		mav.addObject("list", list);
		return mav;
	}
	
	
}
