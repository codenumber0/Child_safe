package kr.childsafe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class TMember {
	 // 회원 아이디 회원 아이디
    private String memId;

    // 회원 비밀번호 회원 비밀번호
    private String memPw;

    // 회원 이름 회원 이름
    private String memName;

    // 회원 생년월일 회원 생년월일
    private Date memBirthdate;

    // 회원 핸드폰 회원 핸드폰
    private String memPhone;

    // 회원 이메일 회원 이메일
    private String memEmail;

    // 회원 주소 회원 주소
    private String memAddr;

    // 회원 가입일자 회원 가입일자
    private Date memJoindate;

    // 관리자 여부 관리자 여부
    private String adminYn;
}
