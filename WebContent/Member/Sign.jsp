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
                <td colspan="2" style="background:navy;" ><font color=white><b>ȸ���⺻����</b></font></td>
            </tr>
            <tr>
                <td><b>���̵�:</b></td>
                <td><input type="text" style="width:170px" id="id" name="id" maxlength="30" onblur="checkid()" />&nbsp;��ID����</td>
            </tr>
            <tr>
                <td><b>���:</b></td>
                <td><input type="password" name="password" style="width:170px" id="password" maxlength="12" onblur="checkps()" />&nbsp;��4-12���� ���� ��ҹ��ڿ� ���ڷθ� �Է�</td>
            </tr>
            <tr>
                <td><b>���Ȯ��:</b></td>
                <td><input type="password" style="width:170px" id="password2" maxlength="12" onblur="checksame()"/></td>
            </tr>
           
            <tr>
                <td><b>�̸�:</b></td>
                <td><input type="text" style="width:170px" name="name" maxlength="12" /></td>
            </tr>
            
             <tr>
                <td><b>��ȭ��ȣ:</b></td>
                <td><input type="text" style="width:200px" name="tel" maxlength="12" /></td>
            </tr>

        </table>
        <center>
            <br/>
            <input type="submit" value="ȸ������" style="border-radius:5px;font-size:20px;" />
            <input type="reset" value="�ٽ��Է�" style="border-radius:5px;font-size:20px;" />
        </center>
    </form>
</body>
</html>

