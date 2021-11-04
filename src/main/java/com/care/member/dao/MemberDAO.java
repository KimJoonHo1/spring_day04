package com.care.member.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.care.member.dto.MemberDTO;

@Component("dao")
public class MemberDAO {
	
	private static ArrayList<MemberDTO> list = new ArrayList<>();
	public int join(MemberDTO dto) {
		for(MemberDTO item : list) {
			if(dto.getId().equals(item.getId())) {
				return 0;
			}
		}
		list.add(dto);
		return 1;
	}
	
	public ArrayList<MemberDTO> getList() {
		return list;
	}
	
	public String login(MemberDTO dto) {
		for(MemberDTO items : list) {
			if(dto.getId().equals(items.getId())) {
				if(dto.getPwd().equals(items.getPwd())) {
					return items.getName();
				} else {
					return "0";
				}
			}
		}
		return "-1";
	}
	
	public MemberDTO info(String id) {
		for(MemberDTO items : list) {
			if(id.equals(items.getId())) {
				return items;
			}
		}
		return null;
	}
}
