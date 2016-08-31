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
function back()   
{   
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
    <td colspan="5" width="780" height="47"></td>
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
</td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">
    
    <logic:present name="hireinfo" scope="session">
	<table width="460">
	  <tr>
		<td>请确认您要发布的信息：</td>
		<td>&nbsp;</td>
	  </tr>
	  <tr>
		<td colspan="2"><hr/></td>
	  </tr>				  
	  <tr>
		<td>${hireinfo.title }<br/></td>
	  </tr>
	  <tr>
		<td><strong>电话/手机：</strong>${hireinfo.telephone }</td>
	  </tr>
	  <tr>
		<td><strong>联系人：</strong>${hireinfo.linkman }</td>
	  </tr>
	  <tr>
		<td>
		<strong>房屋类型：</strong>
		<logic:equal name="hireinfo" property="type" value="1">地下室</logic:equal>
		<logic:equal name="hireinfo" property="type" value="2">平房</logic:equal>
		<logic:equal name="hireinfo" property="type" value="3">普通住宅</logic:equal>
		<logic:equal name="hireinfo" property="type" value="4">公寓</logic:equal>
		<logic:equal name="hireinfo" property="type" value="5">别墅</logic:equal>
		</td>
	  </tr>
	  <tr>
		<td><strong>户型：</strong>${hireinfo.roomCount }室 ${hireinfo.hallCount }厅</td>
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
		<td>${hireinfo.houseInfo }</td>
	  </tr>
	  <tr>
		<td><hr></td>
	  </tr>
	  <tr>
		<td>
		<form action="hireinfo.do?status=confirm" method="POST">
			<input type="hidden" name="affirm" value="y"/>
			<input type="hidden" name="title" value="出租健翔桥二居室"/>
			<input type="submit" value="确认提交" class="btn" >&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="返回修改" class="btn" onclick="back()">
		</form>
		</td>
	  </tr>
	</table>
	</logic:present>
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