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
<!--
<!--   取得javascript数组信息  -->
var v = new Array(7);
var n = new Array(7);
v[0] = new Array('0');
n[0] = new Array('不限--');
v[1] = new Array('1','2','3','4','5');
n[1] = new Array('大学城','凤天路','三峡广场','工人村','小龙坎');
v[2] = new Array('1','2','3','4','5','6');
n[2] = new Array('解放碑','菜园坝','朝天门','大坪','观音桥','上清寺');
v[3] = new Array('1','2','3','4');
n[3] = new Array('城北区','城南区','老城区','童南区');
v[4] = new Array('1','2','3','4','5','6');
n[4] = new Array('北滨路','大石坝','观音桥','红旗河沟','五里店','黄泥磅');
v[5] = new Array('1','2','3','4','5');
n[5] = new Array('南滨路','弹子石','回龙湾','南平','学府路');
v[6] = new Array('1','2','3','4','5');
n[6] = new Array('大竹林','龙头寺','冉家坝','一碗水','人和');
	function selectjd(){
		var row = document.mf.county.value;//alert(row);
		var col = v[row].length;//alert(col);
		document.mf.street.length = 0;
		document.mf.street.options[0] = new Option('不限--','0');
		for(var i=0;i<col;i++) {
			if(v[row][i]!=0){
				document.mf.street.options[i+1] = new Option(n[row][i],v[row][i]);
			}
		}
	}
-->
</script>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5" align=center><img src="images/top1.png" width="768" height="213"></td>
  </tr>
  <tr>
    <td colspan="5" width="780"></td>
  </tr>
  <tr>
    <td width="38">&nbsp;</td>
    <td width="172" valign="top" align="center">

<script language="javascript">
<!--
	function login(){
		if( document.myForm.name.value =="" ){
			alert("用户名不能为空");
			return false;
		}else if(document.myForm.password.value == ""){
			alert("密码不能为空");
			return false;
		} else {
			return true;
		}
	}
-->
</script>

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
</td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495" align="center"><br/>
	<form action="hireinfo.do?status=searchHireinfo" method="post" name="mf">
	<input type="hidden" name="page" value="1"/>
		<table align='center'>
			<tr>
				<td>选择查询条件：</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td>区县：</td>
				<td><select name="county" onChange="selectjd()" style="width:80">
					<option value='0'>不限--</option>
					<option value='1'>沙坪坝</option>
					<option value='2'>渝中</option>
					<option value='3'>北碚</option>
					<option value='4'>江北区</option>
					<option value='5'>南岸</option>
					<option value='6'>渝北</option>
				</select></td>
			</tr>
			<tr>
				<td>街道：</td>
				<td><select name="street" style="width:80">
					<option value="0">不限--</option>
				</select></td>
			</tr>
			<tr>
				<td>租金：</td>
				<td bgcolor="#ffffff"><input type="text" name="minsalary" size="5" class="unnamed1" > 至 <input type="text" name="maxsalary" size="5" class="unnamed1" > 元/月</td>
			</tr>
			<tr>
				<td>户型：</td>
				<td><select name="roomCount" style="width:60">
					<option value="0">不限--</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
				</select>室 <select name="hallCount" style="width:60">
					<option value="0">不限--</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select> 厅</td>
			</tr>
			<tr>
				<td>房屋类型：</td>
				<td><select name="type" style="width:80">
					<option value='0'>不限--</option>
					<option value='1'>地下室</option>
					<option value='2'>平房</option>
					<option value='3'>普通住宅</option>
					<option value='4'>公寓</option>
					<option value='5'>别墅</option>

				</select></td>
			</tr>
			<tr>
				<td>发布日期：</td>
				<td><select name="createTime" style="width:80">
					<option value="0">不限--</option>
					<option value="1">当天</option>
					<option value="2">近两天</option>
					<option value="3">近三天</option>
					<option value="7">近一周</option>
					<option value="14">近两周</option>
					<option value="30">近一月</option>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="查询" class="btn"></td>
			</tr>
		</table>
	</form>
	</td>
    <td width="40">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="5"  height="5" bgcolor="blue"></td>
  </tr>
</table>
<P align="center">&copy;2011重庆科技学院计算机08班xx版权所有</P>
<br/>
</BODY>
</HTML>