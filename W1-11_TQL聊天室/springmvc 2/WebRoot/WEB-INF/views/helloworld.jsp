<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tql网络聊天室</title>
<!-- 即时通讯 -->
<link rel="stylesheet" type="text/css" href="websocketInstantMsg/ext4/resources/css/ext-all.css">
<link rel="stylesheet" type="text/css" href="websocketInstantMsg/css/websocket.css" />
<script type="text/javascript" src="websocketInstantMsg/ext4/ext-all-debug.js"></script>
<script type="text/javascript" src="websocketInstantMsg/websocket.js"></script>
<!-- 即时通讯 -->
<script type="text/javascript">
var user = "<%=request.getAttribute("newUserName")%>";
</script>
<style type="text/css">
<!--
.STYLE1 {
	font-family: "新宋体";
	font-weight: bold;
	font-style: italic;
	font-size:20px;
	background-color: #66FFCC;
}
-->
</style>
</head>
<body>
	<p class="STYLE1">&nbsp;</p>
	<p class="STYLE1">&nbsp;</p>
	<p class="STYLE1">&nbsp;</p>
	<p class="STYLE1">&nbsp;</p>
	<p align="center"><img src="logo.jpg" width="330" height="330"></p>
	<h1 align="center"><%=request.getAttribute("newUserName")%></h1>
	<p align="center">
	  <input name="button" type="button" class="STYLE1" onClick="creatw();" value="进入聊天室" />    
</p>
	<p class="STYLE1">&nbsp;</p>
	<p class="STYLE1">&nbsp;</p>
	<p class="STYLE1">&nbsp;</p>
</body>
</html>

