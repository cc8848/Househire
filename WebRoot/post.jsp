<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
	
	function validateTitle(){
		var pass = false;
		if(document.mf.title.value ==""){
			alert("标题不能为空");
			pass = false;
		}else {
			pass = true;
		}
		if(isNaN(document.mf.salary.value)){
			alert("租金不是数字");
			pass = false;
		}
		return pass;
	}

	function vzj() {
		if(isNaN(document.mf.salary.value)){
			var oMsgDiv = document.getElementById("mid");
			oMsgDiv.innerHTML = "<font color='red'>不是一个数字</font>";
		}else{
			var oMsgDiv = document.getElementById("mid");
			oMsgDiv.innerHTML = "";
		}
	}
-->
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

	<form action="hireinfo.do?status=saveHireinfo" method="post" name="mf" onsubmit="return validateTitle()">
		<input type="hidden" name="affirm" value="n"/>
		<table>
			<tr>
				<td colspan="2">发布租房信息：</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
			  <td><strong>标题：</strong></td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
			  <td><strong>区县：</strong></td>
				<td><select name="county" onChange="selectjd()">
					<option value='1'>沙坪坝</option>
					<option value='2'>渝中</option>
					<option value='3'>北碚</option>
					<option value='4'>江北区</option>
					<option value='5'>南岸</option>
					<option value='6'>渝北</option>
				</select></td>
			</tr>
			<tr>
			  <td><strong>街道：</strong></td>
				<td><select name="street">
					<option value="0">不限--</option>
				</select></td>
			</tr>
			<tr>
			  <td><strong>租金：</strong></td>
				<td><input type="text" name="salary"/>元/月</td>
			</tr>
			<tr>
			  <td><strong>户型：</strong></td>
				<td><select name="roomCount"">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
				</select>室<select name="hallCount">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>厅</td>
			</tr>
			<tr>
			  <td><strong>房屋类型：</strong></td>
				<td><select name="type">
					<option value='0'>不限--</option>
					<option value='1'>地下室</option>
					<option value='2'>平房</option>
					<option value='3'>普通住宅</option>
					<option value='4'>公寓</option>
					<option value='5'>别墅</option>

				</select></td>
			</tr>
			<tr>
			  <td><strong>联系电话：</strong></td>
				<td><input type="text" name="telephone"></td>
			</tr>
			<tr>
			  <td><strong>联系人：</strong></td>
				<td><input type="text" name="linkman"></td>
			</tr>
			<tr>
			  <td><strong>房屋信息：</strong></td>
				<td><textarea name="houseInfo" rows="5" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<div align="center"><input type="submit" value="提交" class="btn"></div>				</td>
			</tr>
		</table>
	</form>
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