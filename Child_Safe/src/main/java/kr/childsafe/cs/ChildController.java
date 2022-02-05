package kr.childsafe.cs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.childsafe.domain.TMember;
import kr.childsafe.service.ChildService;

@Controller
public class ChildController {
	
	@Autowired
	ChildService service;

	@RequestMapping("/memberList.do")
	public String memberList(Model model) {
		List<TMember> list = service.memberList();
		//객체바인딩
		model.addAttribute("list",list);
		return "main";//jsp 이름(jsp*jstl+el)
	}
}
