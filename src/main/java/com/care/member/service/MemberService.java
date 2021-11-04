package com.care.member.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.care.member.dao.MemberDAO;
import com.care.member.dto.MemberDTO;

@Service("service")
public class MemberService {
	
	public MemberService() {
		System.out.println("서비스 생성111");
	}
	@Autowired
	@Qualifier("dao")
	private MemberDAO dao;
	
	public int join(MemberDTO dto) {
		int result = dao.join(dto);
		return result;
	}
	
	public ArrayList<MemberDTO> getList() {
		ArrayList<MemberDTO> list = dao.getList();
		return list;
	}
	
	public String login(MemberDTO dto) {
		String result = dao.login(dto);
		return result;
	}
	
	public MemberDTO info(String id) {
		MemberDTO dto = dao.info(id);
		return dto;
	}
}
