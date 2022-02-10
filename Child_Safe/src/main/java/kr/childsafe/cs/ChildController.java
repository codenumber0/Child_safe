package kr.childsafe.cs;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.childsafe.domain.TMember;
import kr.childsafe.service.ChildService;

@Controller
public class ChildController {
	
	@Autowired
	ChildService service;

	//main 
	@RequestMapping("/Zindex.do")
	public String main() {

	return "Zindex";
	}
	
	//회원테이블조회
	@RequestMapping("/main.do")
	public String memberList(Model model) {
		List<TMember> list = service.memberList();
		//객체바인딩
		model.addAttribute("list",list);
		return "main";//jsp 이름(jsp*jstl+el)
	}
	
	
	
	//회원가입창 클릭
	@RequestMapping(value = "/Zjoin.do",method = RequestMethod.GET)
	public void join() {
	}
	
	//회원가입 완료 버튼 클릭
	@RequestMapping(value = "/Zjoin.do",method = RequestMethod.POST)
	public String join(TMember vo) {
		service.join(vo);
		System.out.println("회원가입 됬나"+vo);
		return "main";
	}
	
	//로그인
	@RequestMapping(value = "/Zlogin.do",method = RequestMethod.GET)
	public void login() {
	}
	
	@RequestMapping(value ="/Zlogin.do",method = RequestMethod.POST)
	public String login(TMember vo,HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		TMember login = service.login(vo);
		
		if(login==null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg",false);
			System.out.println("로그인 성공못함");
		}else{
			session.setAttribute("member", login); //login 여기에 session vo값들을 저장
			System.out.println("로그인 성공");
		}
		return "redirect:/Zindex.do";
	}
	
	//로그아웃
	@RequestMapping(value = "/logout.do",method=RequestMethod.GET)
	public String lougout(HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃 성공");
		return "redirect:/main.do";
	}
	
	//회원정보 보기
	@RequestMapping(value = "/mypage.do",method = RequestMethod.GET)
	public String memberUpdateView() {
		return "mypage";
	}
	//회원정보 수정
	@RequestMapping(value = "/mypage.do",method = RequestMethod.POST)
	public String memberUpdate(TMember vo,HttpSession session) {
		service.memberUpdate(vo);
		session.invalidate();
		return "redirect:/main.do";//회원수정을 하면 세션이 끊어져서 로그아웃된 메인화면으로 이동
		
	}
	
	// 게시판
	@RequestMapping(value = "/Ztable.do",method = RequestMethod.GET)
	public void table() {
	}
	
	@RequestMapping(value = "/Zwrite.do",method = RequestMethod.GET)
	public void write() {
	}
	
	
	@RequestMapping(value = "/Zpost.do",method = RequestMethod.GET)
	public void post() {
	}
	
	// 지도
	@RequestMapping(value = "/Zmap1.do",method = RequestMethod.GET)
	public void map1() {
	}
}
