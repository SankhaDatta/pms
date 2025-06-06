<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.vts.pfms.cars.model.CARSInitiation"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CARS Transaction</title>
<style>

.break{
	page-break-after: always;
} 
 
.left{
	text-align: left
}

.right{
	text-align: right
}

.center{
	text-align: center
}


#pageborder {
      position:fixed;
      left: 0;
      right: 0;
      top: 0;
      bottom: 0;
      border: 2px solid black;
    }     
 
 @page  {             
          size: 790px 950px;
          margin-top: 49px;
          margin-left: 39px;
          margin-right: 39px;
          margin-buttom: 49px; 	
          border: 1px solid black; 
          
          @bottom-left {          		
             content: "";
             margin-bottom: 30px;
             margin-right: 10px;
             font-size: 13px;
          }
             
                    
           @bottom-right  {
            content: "Page " counter(page) " of " counter(pages);
            margin-bottom: 30px;
          }
           @top-right {
             content: "";
             margin-top: 30px;
             font-size: 13px;
          }
          
          @top-center {
             content: "";
             margin-top: 30px;
             font-size: 13px;
          }
          
          
          @top-left {
          	margin-top: 30px;
            content: "";
            font-size: 13px;
          }               
          
 }
       
#tabledata{
 margin-left : 10px;
 margin-top : 10px;
 border-collapse : collapse;
 border : 1px solid black;
 width : 98.5%;
}
#tabledata th{
 text-align : center;
 font-size: 14px;
}
#tabledata td{
 text-align : left;
}
#tabledata td,th{
 border : 1px solid black;
 padding : 7px;
}

p
{
	text-align: justify !important;
  	text-justify: inter-word;
}
p,td,th
{
  word-wrap: break-word;
  word-break: normal ;
}


</style>
</head>
<body>
<%
List<Object[]> statuslist = (List<Object[]>)request.getAttribute("TransactionList");
CARSInitiation carsIni = (CARSInitiation)request.getAttribute("CARSInitiationData"); 

SimpleDateFormat month=new SimpleDateFormat("MMM");
SimpleDateFormat day=new SimpleDateFormat("dd");
SimpleDateFormat year=new SimpleDateFormat("yyyy");
SimpleDateFormat time=new SimpleDateFormat("HH:mm");
%>

<table id="tabledata">
	<tr>
		<td colspan="2" style="text-align: center;"><%=carsIni.getCARSNo() %> </td>
	</tr>
	<%if(statuslist!=null && statuslist.size()>0) {
		for(Object[] obj : statuslist){
	%>
 	<tr>
 		<td style="font-weight: bold;"><%=obj[6] %> </td>
 		<td>
 			<%if(obj[2]!=null) {%> <%=obj[2] %><%} else{%><%=obj[9] %><%} %> , <%if(obj[3]!=null) {%> <%=obj[3] %><%} else{%>Expert<%} %><br>
 			[ <span style="font-size: 13px;">On</span> : 
 			  <span style="color: #0289BF;font-size: 13px;">
 			  	<%=day.format(obj[4]) %> <%=month.format(obj[4]) %> <%=year.format(obj[4]) %>, <%=time.format(obj[4]) %>
 			  </span>
 			 ]
 		</td>
 	</tr>
 	<%}} %>
</table>
</body>
</html>