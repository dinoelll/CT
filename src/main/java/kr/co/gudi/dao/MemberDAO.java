package kr.co.gudi.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gudi.dto.MemberDTO;


//Service에서 MapperScan을 안 할 경우

//@Mapper 를 통해 특정 클래스와 연결을 해준다.

// service 에서 Mapper Scan 어노테이션을 사용하지 않으면
//DAO 에 Mapper 어노테이션을 사용하면 된다. -> 숫자가 적을 때 좋다.
@Mapper
public interface MemberDAO {
	
	
	



	

	ArrayList<MemberDTO> list();

	int del(String id);

	MemberDTO detail(String id);

	int update(HashMap<String, String> params);

	int join(MemberDTO dto);

	String login(String id, String pw);


	
	
}
