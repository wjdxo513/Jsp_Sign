package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;


public class MemberAddAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		MemberDAO memberdao=new MemberDAO();
	   	MemberBean memberdata=new MemberBean();
	   	ActionForward forward=new ActionForward();
	   	
   		boolean result=false;
   		
   		try{
   			String id=request.getParameter("id"); //jsp에서 값을 받아옴
   			String pw=request.getParameter("password");
   			String name=request.getParameter("name");
   			String phone=request.getParameter("tel");
   			
   			memberdata.setId(id); //dto에 저장
   			memberdata.setPw(pw);
   			memberdata.setName(name);
   			memberdata.setPhone(phone);
   			memberdata.setMaster(1);
	   		
   			result=memberdao.MemberInsert(memberdata); //dao로 보냄
	   		
	   		if(result==false){
	   			System.out.println("회원가입실패");
	   			return null;
	   		}
	   		System.out.println("회원가입성공");
	   		
	   		forward.setRedirect(true);
	   		forward.setPath("./Login.do");
	   		return forward;

  		}catch(Exception ex){
   			ex.printStackTrace();
   		}
  		return null;
	}  	
}
