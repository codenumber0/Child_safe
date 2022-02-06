package kr.childsafe.mapper;

import java.util.List;

import kr.childsafe.domain.TMember;

public interface Childmapper {
	//회원조회
	public List<TMember> memberList();
	//회원가입
	public void join(TMember vo);
	//로그인
	public TMember login(TMember vo);
}
