<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <style>
        @import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);

        body {
            font-family: 'Nanum Pen Script';
            font-size: 50px;
        }
    </style>
</head>
<body>
    <form action="./MemberLoginAction.do" method="post">
        <center>
        <br><br>
            <h1 align="center" style="font-size:90px;"><font color="navy"><b>Login</b></font></h1>
            <table  width="500px" height="230px" cellpadding="1" cellspacing="1">
                <h3><tr>
                    <td>ID : <input type="text" name="id" style="height:35px;width:220px"></td>
                    <td rowspan="2">
           			                    <input TYPE="IMAGE" src="Image/Login.png" value="Submit" style="height:150px; width=150px"align="center">
                 &nbsp;<input TYPE="button" style="height:30pt;width:80pt; background-color:black; color:white" value="SIGN UP" onclick="location.href='Sign.do'" >
                </tr></h3>
                <tr><td>PW:<input type="password" name="password"style="height:34px;width:220px"/></td></tr>
            </table>
        </center>
    </form>
</body>
</html>