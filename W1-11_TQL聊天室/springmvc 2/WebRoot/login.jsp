<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<style>
		 #left {
    line-height:50px;
    color:blue;
    height:300px;
    width:300px;
    float:left;
    padding-left:300px;	 
    padding-top:200px;  
    font-size: 20px;
}
</style>
   
	<title>登录界面</title>

	</head>

	 <body background="background.jpg">
         <div id="left">
		<form action="helloworld.do" method="post">
            
			账号：
			<input type="text" name="userName" />
			<br />
			密码：
			<input type="password" name="password" />
			<br />
 
			<input type="submit" value="login" />

			<br />
 
		</form>
       </div>
	</body>

</html>