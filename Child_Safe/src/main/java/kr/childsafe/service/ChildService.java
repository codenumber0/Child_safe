package kr.childsafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.childsafe.domain.TMember;
import kr.childsafe.mapper.Childmapper;

@Service
public class ChildService { //scan에 의해서 메모리에 올라가는데 controller 는 servlet context에 넣어줘야함
	
	@Autowired
	Childmapper mapper;
	
	//method db에서 멤버리스트를 갖고오는 메소드 컨트롤러야 db에서 멤버리스트 갖고와
	//회원테이블조회
	public List<TMember> memberList() {
		List<TMember> list =mapper.memberList();
		return list;
	}
	//회원가입
	public void join(TMember vo){
		System.out.println("service"+vo);
		mapper.join(vo);
	}
	//로그인
	public TMember login(TMember vo) {
		return mapper.login(vo);
	}
	//회원정보 수정
	public void memberUpdate(TMember vo) {
		mapper.memberUpdate(vo);
	}
}
