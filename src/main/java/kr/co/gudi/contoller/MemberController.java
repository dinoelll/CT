package kr.co.gudi.contoller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.gudi.dto.MemberDTO;
import kr.co.gudi.service.MemberService;



@Controller
public class MemberController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired MemberService service;
	
	
	
	@RequestMapping(value="/")
	public String home() {
		
		return "codeTest";
		
		
	}
	
	@RequestMapping(value = "/join.go", method = RequestMethod.GET)
	   public String joinForm() {
	      return "joinForm";
	   }
	
	
	// post만 받는 요청
	@PostMapping(value="join.do")
	public ModelAndView  join(MemberDTO dto) {
		
		// 파라메터를 DTO로 받기 위한 조건
		//1. post 방식으로 보낼 것
		//2. dto의 필드와 보내는 파라메터의 이름과 갯수가 정확히 일치할 것(null 이 있으면 안된다.)
		logger.info("dto : " + dto.getId());
		return service.join(dto);
		
	}
	
	//파라메터를 받을 때 꼭 @ RequsetParam이 붙을 힐요는 없다.(하지만 붙여주자, 구버전은 안될수도 잇음)
	@PostMapping(value="login.do")
	public String login(String id, String pw, HttpSession session, Model model) {
		logger.info(id+"/"+pw);
		
		String page ="login";
		
		
		String loginId = service.login(id, pw);
		logger.info("loginId : " + loginId);
		
		if(loginId != null) {
			// msg ="로그인에 성공했"; -> 리다이렉트는 못써줌
			page ="redirect:/list.do";
			session.setAttribute("loginId", loginId);
			
		}else {
			model.addAttribute("msg","아이디 비밀번호를 확인하세요!");
		}
		
		
		return page;
		
	}
	
	
	
	
	@RequestMapping(value="/list.do", method = {RequestMethod.GET, RequestMethod.POST})
	   public ModelAndView list(Model model , HttpSession session) {
	      
		   
	
	      return service.list();
	   }
	 @RequestMapping(value="/del.do", method = RequestMethod.GET)
	   public String del(@RequestParam String id, HttpSession session   ) {
		   logger.info("delete id = " + id);
		   String msg = " 삭제에 실패 했습니다.";
		   
		   if(session.getAttribute("loginId") != null) {
			   if(service.del(id)==1) {
				   
				   msg="삭제에 성공 했습니다.";
			   }
		   }
			
		   //redirect 시 데이터를 보낼 수 없다.
		   // 하지만 session 에는 데이터를 넣어 보낼 수 있다.
		   session.setAttribute("msg", msg);
		   
		   return "redirect:/list.do";
	   }
	 
	 @RequestMapping(value = "/detail.do", method = RequestMethod.GET)
		public String detail(@RequestParam String id , Model model) {
			
			String page = "redirect:/list.do";
			
			MemberDTO dto = service.detail(id);
			if(dto != null) {
				page = "detail";
				model.addAttribute("member" , dto);
			}
				
				
			
			return page;
				
		}
	 
	 
	 @RequestMapping(value = "/update.do", method = RequestMethod.POST)
		public String update( Model model, @RequestParam HashMap<String, String> params, HttpSession session) {
			logger.info("join param :" + params);
			
			if(session.getAttribute("loginId") != null) {
				service.update(params);
			}
			
			return "redirect:/detail.do?id="+params.get("id");
		}
	 
	
	
}
