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
    <td colspan="5"><img src="images/top1.png" width="780" height="213"></td>
  </tr>
  <tr>
    <td colspan="5" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38" background="images/middle2.jpg">&nbsp;</td>
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
    <td width="495" align="center">

	<logic:present name="hireinfo" scope="request">
	<form action="hireinfo.do?status=updateHireinfoById&id=${hireinfo.id }" method="post" name="mf">
	<table width="450">
	  <tr>
		<td id=listTitle>&nbsp;</td>
	  </tr>
	  <tr>
	    <td id=listTitle><hr/></td>
	    </tr>
	  <tr>
	  	<td><strong>标题：</strong><input name="title" value="${hireinfo.title }" /></td>
	  </tr>
	  <tr>
		<td><strong>电话/手机：</strong><input name="telephone" value="${hireinfo.telephone }" /></td>
	  </tr>
	  <tr>
		<td><strong>联系人：</strong><input name="linkman" value="${hireinfo.linkman }" /></td>
	  </tr>
	  <tr>
		<td><strong>房屋类型：</strong>
		<select name="type" style="width:80">
			<logic:equal name="hireinfo" property="type" value="0">
			<option value="0">不限--</option>
			<option value="1">地下室</option>
			<option value="2">平房</option>
			<option value="3">普通住宅</option>
			<option value="4">公寓</option>
			<option value="5">别墅</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="type" value="1">
			<option value="0">不限--</option>
			<option value="1" selected>地下室</option>
			<option value="2">平房</option>
			<option value="3">普通住宅</option>
			<option value="4">公寓</option>
			<option value="5">别墅</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="type" value="2">
			<option value="0">不限--</option>
			<option value="1">地下室</option>
			<option value="2" selected>平房</option>
			<option value="3">普通住宅</option>
			<option value="4">公寓</option>
			<option value="5">别墅</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="type" value="3">
			<option value="0">不限--</option>
			<option value="1">地下室</option>
			<option value="2">平房</option>
			<option value="3" selected>普通住宅</option>
			<option value="4">公寓</option>
			<option value="5">别墅</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="type" value="4">
			<option value="0">不限--</option>
			<option value="1">地下室</option>
			<option value="2">平房</option>
			<option value="3">普通住宅</option>
			<option value="4" selected>公寓</option>
			<option value="5">别墅</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="type" value="5">
			<option value="0">不限--</option>
			<option value="1">地下室</option>
			<option value="2">平房</option>
			<option value="3">普通住宅</option>
			<option value="4">公寓</option>
			<option value="5" selected>别墅</option>
			</logic:equal>
		</select>
		</td>
	  </tr>
	  <tr>
		<td><strong>户型：</strong>
		<select name="roomCount" style="width:60">
			<logic:equal name="hireinfo" property="roomCount" value="0">
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
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="1">
			<option value="0">不限--</option>
			<option value="1" selected>1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="2">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2" selected>2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="3">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3" selected>3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="4">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4" selected>4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="5">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5" selected>5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="6">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6" selected>6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="7">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7" selected>7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="8">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8" selected>8</option>
			<option value="9">9</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="roomCount" value="9">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9" selected>9</option>
			</logic:equal>
		</select>
		室
		<select name="hallCount" style="width:60">
			<logic:equal name="hireinfo" property="hallCount" value="0">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="hallCount" value="1">
			<option value="0">不限--</option>
			<option value="1" selected>1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="hallCount" value="2">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2" selected>2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="hallCount" value="3">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3" selected>3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="hallCount" value="4">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4" selected>4</option>
			<option value="5">5</option>
			</logic:equal>
			<logic:equal name="hireinfo" property="hallCount" value="5">
			<option value="0">不限--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5" selected>5</option>
			</logic:equal>
		</select>
		厅
		</td>
	  </tr>
	  <tr>
		<td><strong>价格：</strong><input name="salary" value="${hireinfo.salary }" />元</td>
	  </tr>
	  <tr>
		<td><strong>地段：</strong>
			<select name="county" onChange="selectjd()" style="width:80">
				<option value="${address.i }">${address.county }</option>
					<option value='0'>不限--</option>
					<option value='1'>沙坪坝</option>
					<option value='2'>渝中</option>
					<option value='3'>北碚</option>
					<option value='4'>江北区</option>
					<option value='5'>南岸</option>
					<option value='6'>渝北</option>

				</select>
			区&nbsp;&nbsp;
			<select name="street" style="width:80">
				<option value="${address.j }">${address.street }</option>
					<option value="0">不限--</option>
				</select>
			
		</td>
	  </tr>
	  <tr>
		<td ><strong>房屋信息：</strong><input name="houseInfo" value="${hireinfo.houseInfo }" /></td>
	  </tr>
	  <!--  
	  <tr>
		<td><strong>发布时间：</strong> ${hireinfo.createTime }</td>
	  </tr>
	  -->
	  <tr>
		<td><hr></td>
	  </tr>
	  <tr>
		<td><input type="submit" value="更新" class="btn"></td>
	  </tr>
	</table>
	</form>
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