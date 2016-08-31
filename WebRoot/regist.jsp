<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<TITLE>出租房</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function pass(){
		var pass = false;
		if( document.myForm.name.value =="" ){
			alert("用户名不能为空");
			pass= false;
		}else if(document.myForm.password.value == ""){
			alert("密码不能为空");
			pass = false;
		} else if(document.myForm.password.value != document.myForm.password2.value){
			alert("两次密码不一样");
			pass = false;
		}  else {
			pass = true;
		}
		return pass;
	}
</script>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="784" border="0" align="center" cellpadding="0" cellspacing="0" height="448">
  <tr>
    <td colspan="5"><img src="images/top1.png" width="780" height="213"></td>
  </tr>
  <tr>
    <td colspan="5" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38">&nbsp;</td>
    <td width="172">
	<table align="center">
		<tr>
		  <td><a href="index.jsp">返回首页</a></td>
		</tr>
		<tr>
		  <td><a href="login.jsp">用户登陆</a></td>
		</tr>
	</table>
	</td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
	<form action="user.do?status=regist" method="post" name="myForm" onsubmit="return pass()">
		<table align="center">
			<tr>
				<td>用户注册：</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="name"></td>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="password"></td>
			<tr>
			<tr>
				<td>重复密码：</td>
				<td><input type="password" name="password2"></td>
			<tr>
				<td><input type="submit" value="注册" class="btn">&nbsp;</td>
				<td><input type="reset" value="重置" class="btn"></td>
			</tr>
		</table>
	</form>
	</td>
    <td width="40">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="5"><br></td>
  </tr>
</table>
<P align="center">&copy;2011重庆科技学院计算机08班xx版权所有</P>
<br/>
</BODY>
</HTML>