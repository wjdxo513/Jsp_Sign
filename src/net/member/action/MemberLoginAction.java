package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberLoginAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		MemberDAO memberdao=new MemberDAO();
	   	MemberBean memberdata=new MemberBean();
	   	ActionForward forward=new ActionForward();
	   	
  		String result= "";
  		
  		 try {
  	         String id = request.getParameter("id"); //jsp 에서 값을 받아옴
  	         String pw = request.getParameter("password");
  	         
  	         memberdata.setId(id); //dto에 값을 넣음
  	         memberdata.setPw(pw);
  	         result = memberdao.MemberLogin(memberdata); //dao로 값을 보냄

  	         String[] arr = result.split("\t");

  	         HttpSession session = request.getSession();

  	         System.out.println(result);
  	         
  	         if (arr[0].equals("true")) {
  	            session.setAttribute("master", arr[1]);
  	            session.setAttribute("name", arr[2]);
  	            System.out.println("로그인 완료");
  	            forward.setRedirect(true);
  	            forward.setPath("Start.do");
  	            return forward;
  	         }else{
  	            System.out.print("로그인실패");
  	         }
  	      } catch (Exception ex) {
  	         ex.printStackTrace();
  	      }
  	      return null;
  	   }
}
