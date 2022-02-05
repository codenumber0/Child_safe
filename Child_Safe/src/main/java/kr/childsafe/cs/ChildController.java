package kr.childsafe.cs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.childsafe.domain.TMember;
import kr.childsafe.service.ChildService;

@Controller
public class ChildController {
	
	@Autowired
	ChildService service;

	//main 
//	@RequestMapping("/main.do")
//	public String main() {
//		System.out.println(vo);
//		return "main";
//	}
	
	//회원테이블조회
	@RequestMapping("/main.do")
	public String memberList(Model model) {
		List<TMember> list = service.memberList();
		//객체바인딩
		model.addAttribute("list",list);
		System.out.println(list);
		return "main";//jsp 이름(jsp*jstl+el)
	}
	
	
	
	//회원가입창 클릭
	@RequestMapping(value = "/join.do",method = RequestMethod.GET)
	public void join() {
	}
	
	//회원가입 완료 버튼 클릭
	@RequestMapping(value = "/join.do",method = RequestMethod.POST)
	public void join(TMember vo) {
		service.join(vo);
		System.out.println(vo);
	}
	
}
