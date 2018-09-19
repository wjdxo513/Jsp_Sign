<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <style>
         @import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);
         body{font-family:'Nanum Pen Script';font-size:35px;}
    </style>
</head>
<body>
<form action=./MemberAddAction.do method=post>
    <h1 align="center" style="font-size:60px;"><font color="navy"><b>SIGN UP</b></font></h1>
    <form action="post" name="f">
        <table width="800" height="600" border="1" align="center" cellspacing="0">
            <tr height="10" align="center">
                <td colspan="2" style="background:navy;" ><font color=white><b>회원기본정보</b></font></td>
            </tr>
            <tr>
                <td><b>아이디:</b></td>
                <td><input type="text" style="width:170px" id="id" name="id" maxlength="30" onblur="checkid()" />&nbsp;※ID형식</td>
            </tr>
            <tr>
                <td><b>비번:</b></td>
                <td><input type="password" name="password" style="width:170px" id="password" maxlength="12" onblur="checkps()" />&nbsp;※4-12자의 영문 대소문자와 숫자로만 입력</td>
            </tr>
            <tr>
                <td><b>비번확인:</b></td>
                <td><input type="password" style="width:170px" id="password2" maxlength="12" onblur="checksame()"/></td>
            </tr>
           
            <tr>
                <td><b>이름:</b></td>
                <td><input type="text" style="width:170px" name="name" maxlength="12" /></td>
            </tr>
            
             <tr>
                <td><b>전화번호:</b></td>
                <td><input type="text" style="width:200px" name="tel" maxlength="12" /></td>
            </tr>

        </table>
        <center>
            <br/>
            <input type="submit" value="회원가입" style="border-radius:5px;font-size:20px;" />
            <input type="reset" value="다시입력" style="border-radius:5px;font-size:20px;" />
        </center>
    </form>
</body>
</html>

