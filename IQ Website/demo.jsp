<%@ page language="java" %><%@ page import="javax.naming.*" %>
   <%@ page import="java.sql.*" %>
   <%@ page import="javax.sql.*" %>
		<%! int i,noca;%>
  

<html >
<head>

<title>Untitled Document</title>
<style type="text/css">
<!--
.centeralignandbold {
	text-align: center;
	font-weight: bold; 
}
-->
</style>
<script>
var ptr=<%=i%>;
function check()
{
 
<%try{
String answer[]={"d","b","b","c","b","b","b","b","d","c","b","b","d","b","a","c","a","c","c","b"};
String ans= request.getParameter("textfield");
if(ans.equals(answer[i-1]))
noca++;}catch(Exception e){}%>
if(ptr==19)
alert("Test over!! \n You gave "+<%=noca%>+" answer(s) correct"); 
else
document.forms["myform"].submit();

}

</script> 
</head>

<body>

<img src="Banner Final.PNG" width="100%" height="12%" alt="Banner" />

<table width="100%" height="500"border="1" id="table1">
  <tr>
    <td bgcolor="#0794EE" class="centeralignandbold"> <%
try{int j=0;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:IQQuestions");
Statement stat=con.createStatement();
ResultSet rs=stat.executeQuery("select * from iqquestions order by questions");
String ques[]=new String[20];
while(rs.next())
{
ques[j]=rs.getString(1);j++;
}
out.println(ques[i]);i++;

  }catch(Exception e){} %> 
</td>
  </tr>
</table>
<form name="myform" id="myform" action="demo.jsp" method="post">
your answer:- <input type="text" name="textfield" value="" id="1">
<input type="button" value="Submit answer" onclick="check();">

</form>
</body>
</html>

   

