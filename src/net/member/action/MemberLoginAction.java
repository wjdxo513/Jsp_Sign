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
  	         String id = request.getParameter("id"); //jsp ���� ���� �޾ƿ�
  	         String pw = request.getParameter("password");
  	         
  	         memberdata.setId(id); //dto�� ���� ����
  	         memberdata.setPw(pw);
  	         result = memberdao.MemberLogin(memberdata); //dao�� ���� ����

  	         String[] arr = result.split("\t");

  	         HttpSession session = request.getSession();

  	         System.out.println(result);
  	         
  	         if (arr[0].equals("true")) {
  	            session.setAttribute("master", arr[1]);
  	            session.setAttribute("name", arr[2]);
  	            System.out.println("�α��� �Ϸ�");
  	            forward.setRedirect(true);
  	            forward.setPath("Start.do");
  	            return forward;
  	         }else{
  	            System.out.print("�α��ν���");
  	         }
  	      } catch (Exception ex) {
  	         ex.printStackTrace();
  	      }
  	      return null;
  	   }
}
