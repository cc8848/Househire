<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
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
<script   language="javascript">   
	function back(){
		window.history.back();
	}
</script>


</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5"><img src="images/top1.png" width="780" height="213"></td>
  </tr>
  <tr>
    <td colspan="5" width="780"></td>
  </tr>
  <tr>
    <td width="38">&nbsp;</td>
    <td width="172" valign="top">

<script language="javascript">
<!--
	function login(){
		if( document.myForm.uname.value =="" ){
			alert("用户名不能为空");
			return false;
		}else if(document.myForm.upass.value == ""){
			alert("密码不能为空");
			return false;
		} else {
			return true;
		}
	}
-->
</script>

	<logic:equal name="user" value="" scope="session">
	<form action="user.do?status=login" method="post" name="myForm" onsubmit="return login()">
  	<p>&nbsp;</p>
	  <table align="center">
		<tr>
			<td colspan="2">用户名：</td>
		</tr>
		<tr>
		  <td colspan="2"><input type="text" name="name" size=10" class="editbox"></td>
		</tr>
		<tr>
			<td colspan="2">密&nbsp;&nbsp;码：</td>
			</tr>
		<tr>
		  <td colspan="2"><input type="password" name="password" size=10"  class='editbox'></td>
		  </tr>
		<tr>
			<td>
				<input type="hidden" name="sign" value="login"/>
				<input type="submit" value="登陆" class='btn'>
				<input type="reset" value="重置" class='btn'>
			</td>
		</tr>
		<tr>
		  <td><a href="regist.jsp">注册用户</a></td>
		</tr>
	  </table>
   </form>	
	</logic:equal>
	
	<logic:notEqual name="user" value="" scope="session">
	<table align="center">
	<tr>
		<td width=''><font color='red'>当前用户：

			${user.name }</font>
		</td>
	</tr>
	<tr>
		<td width='150'><a href="hireinfo.do?status=myHireinfo">管理我的租房信息</a></td>
	</tr>
	<tr>
		<td width='100'><a href="post.jsp">发布租房信息</a></td>
	</tr>
	<tr>
		<td width='100'><a href="user.jsp">返回首页</a></td>
	</tr>
	<tr>
		<td width='100'><a href="user.do?status=logout">[注销]</a></td>
	</tr>
	</table>
	</logic:notEqual>
</td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495" align="center">

	<logic:present name="hireinfo" scope="request">
	<table width="450">
	  <tr>
		<td id=listTitle>${hireinfo.title }</td>
	  </tr>
	  <tr>
	    <td id=listTitle><hr/></td>
	    </tr>
	  <tr>
		<td><strong>电话/手机：</strong>${hireinfo.telephone }</td>
	  </tr>
	  <tr>
		<td><strong>联系人：</strong>${hireinfo.linkman }</td>
	  </tr>
	  <tr>
		<td><strong>房屋类型：</strong>
		<logic:equal name="hireinfo" property="type" value="1">地下室</logic:equal>
		<logic:equal name="hireinfo" property="type" value="2">平房</logic:equal>
		<logic:equal name="hireinfo" property="type" value="3">普通住宅</logic:equal>
		<logic:equal name="hireinfo" property="type" value="4">公寓</logic:equal>
		<logic:equal name="hireinfo" property="type" value="5">别墅</logic:equal>
		</td>
	  </tr>
	  <tr>
		<td><strong>户型：</strong>${hireinfo.roomCount }室${hireinfo.hallCount }厅</td>
	  </tr>
	  <tr>
		<td><strong>价格：</strong>${hireinfo.salary }元</td>
	  </tr>
	  <tr>
		<td><strong>地段：</strong>${address.county }区&nbsp;&nbsp;${address.street }</td>
	  </tr>
	  <tr>
		<td><strong>发布时间：</strong> ${hireinfo.createTime }</td>
	  </tr>
	  <tr>
		<td><hr></td>
	  </tr>
	  <tr>
		<td >${hireinfo.houseInfo }</td>
	  </tr>
	  <tr>
		<td><input type="button" value="后退" class="btn" onclick="back()"></td>
	  </tr>
	</table>
	</logic:present>

	</td>
    <td width="40">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="5" width="780" height="5" bgcolor="blue"></td>
  </tr>
</table>
<P align="center">&copy;2011重庆科技学院计算机08班xx版权所有</P>
<br/>
</BODY>
</HTML>