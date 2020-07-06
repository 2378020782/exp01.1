<%--
  Created by IntelliJ IDEA.
  User: yy
  Date: 2020/7/6
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>注册</title>
  <script language="javascript">
      function check(){
          var userid= new String(document.forms[0].userid.value);
          var password= new String(document.forms[0].password.value);
          if(userid=="") {
              alert("请输入账号！")
              return false;
          }
          if(userid.length>20) {
              alert("账号太长，不能大于20个字符");
              return false;
          }
          if(password.length<6){
              alert("密码太短，必须大于六个字符");
              return false;
          }
          return true
      }
  </script>
</head>
<body>
<center>
  <h2>用户登录</h2>
  <form action="" method="post" onSubmit="return check()">
    <table width="20%">
      <tr>
        <td>账号：<input type="text"name="userid" id="userid"/> </td>
      </tr>
      <tr>
        <td>密码：<input type="password"name="password"  id="password"/></td>
      </tr>
      <tr>
        <td><input type="submit" name="submit" value="登录"/>
          <input type="reset" value="重置"/> </td>
      </tr>
    </table>
  </form>
</center>
</body>
</html>
