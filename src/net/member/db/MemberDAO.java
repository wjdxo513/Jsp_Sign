package net.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
    String returns = "";
	
	public MemberDAO() {
		try{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}

	public boolean MemberInsert(MemberBean member){ //회원가입
		int num =0;
		String sql="";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement("select * from member");
			rs = pstmt.executeQuery();
			
			sql="insert into member(id,pw,name,phone,master)values(?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPw());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getPhone());
			pstmt.setInt(5,member.getMaster());
			
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("MemberInsert 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}
	
	public String MemberLogin(MemberBean memberdata) // 로그인
	   {
	      String id = memberdata.getId();
	      String pw = memberdata.getPw();
	      
	      try {
	         String sql = "SELECT id,pw,name,master FROM member where id=? ";
	         pstmt = con.prepareStatement(sql);
	         pstmt.setString(1, id);
	         rs = pstmt.executeQuery();
	         if (rs.next()) { //로그인
	            if (pw.equals(rs.getString("pw"))) {
	               returns = true+"\t"+rs.getString("master")+"\t"+rs.getString("name");
	            } else {
	               System.out.println("비번틀림");
	            }
	            System.out.println(returns);
	         }
	      } catch (SQLException e) {
	         System.out.println("login실패");
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      return returns;
	   }
}

