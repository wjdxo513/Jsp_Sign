package net.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberFrontControll extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	 protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			 	throws ServletException, IOException {
		 
				 String RequestURI=request.getRequestURI();
				 String contextPath=request.getContextPath();
				 String command=RequestURI.substring(contextPath.length());
				 ActionForward forward=null;
				 Action action=null;
				   
				   if(command.equals("/Sign.do")){
					   forward=new ActionForward();
					   forward.setRedirect(false);
					   forward.setPath("./Member/Sign.jsp");
					   
				   }else if(command.equals("/Login.do")){
					   forward=new ActionForward();
					   forward.setRedirect(false);
					   forward.setPath("./Member/Login.jsp");
					   
				   }else if(command.equals("/MemberAddAction.do")){
					   action = new MemberAddAction();
					   try{
						   forward=action.execute(request, response);
					   }catch(Exception e){
						   e.printStackTrace();
					   }
				}else if(command.equals("/MemberLoginAction.do")){
					   action = new MemberLoginAction();
					   try{
						   forward=action.execute(request, response);
					   }catch(Exception e){
						   e.printStackTrace();
					   }
			 	   }else if(command.equals("/Start.do")){
			 		   forward=new ActionForward();
					   forward.setRedirect(false);
					   forward.setPath("./Member/Start.jsp");
				   }
				   //전송방식처리  => forward방식 또는 sendRedirect방식 선택
				   if(forward.isRedirect()){
					   response.sendRedirect(forward.getPath());
				   }else{
					   RequestDispatcher dispatcher=
						   request.getRequestDispatcher(forward.getPath());
					   dispatcher.forward(request, response);
				   }
				  
			 }
   
	 		protected void doGet(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
				doProcess(request,response);
			}  	
			
			protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
				doProcess(request,response);
			}   	  	    

}
