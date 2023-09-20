
<%@ page import="java.util.List" %>
<%@ page import="com.shopnest.dbhandler.DataFetcher" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style>


 td, th {
    border: 3px solid;width: 1%;
    padding:3px;
    
    box-sizing: border-box; border-radius: 5px;
    font-size: 30px;
    color: rgb(220, 181, 42);
    background-color: rgb(43, 42, 42);
    
  }
 


  
  table {
    
    border-collapse: collapse;
    display: none;
   
    margin-top: 60px;
    
  }
button{
    width:20%;
    height: 40px;
    border-radius: 10px;
    background-color: rgb(151, 36, 151);
}
#panel2,#panel3{
display:none;
}

</style>
</head>
<body>

<%
List userlist=DataFetcher.fetchUserInfo();
%>


<button class="active" data-tab="tab1" id="tab1">View User Info</button>
<button data-tab="tab2"  id="tab2">Add New Product</button>
<button data-tab="tab3" id="tab3" >View Product Info</button>
<a href="login.jsp" style="text-decoration:none"><button>Logout</button></a>
<div class="tab active" >
<table  id="panel1">
<thead>
<tr>
<th>ID</th>
<th>UserName</th>
<th>Email_Id</th>
<th>Age</th>
<th>Password</th>
</tr>
</thead>
<tbody>
<%
for(int i=0;i<userlist.size();i++){
	String rowdata[]=((String)userlist.get(i)).split(":");

%>
<tr>
<td><%= rowdata[0] %></td>
<td><%= rowdata[1] %></td>

<td><%= rowdata[2] %></td>
<td><%= rowdata[3] %></td>
<td><%= rowdata[4] %></td>
</tr>
<%} %>


</tbody>


</table>

   <form action="addPro" method="post" id="panel2">
        <header>Product_Id:</header>
        <input type="text" placeholder="Your Product" class="in" name="proid" />
        <br />
        <br>
        <header>Product_Name</header>
        <input type="Text" placeholder="Pro Name" class="in" name="proname"/>
        <br />
        <br>
        <header>Product description</header>
       <textarea rows="20" cols="40" name="prodes"></textarea>
        <br />
        <br>
        <header>Product_Price</header>
        <input type="number" placeholder="price" class="in" name="proprice" />
        <br />
        <br>
        <header>Image Name</header>
        <input type="text" placeholder="Name" class="in" name="proimg" />
        <br />
        <br>
      <button class="in" id="btn">Add</button>
       <br />
  
    </form>
    
    
    <table id="panel3">
<thead>
<tr>
<th>Product_Id</th>
<th>Product_Name</th>
<th>Product_Description</th>
<th>Product_Price</th>
<th>Product_Image</th>
</tr>
</thead>
<tbody>
<%List prolist= DataFetcher.fetchProductInfo(); %>
<%for(int i=0;i<prolist.size();i++){
	String prod[]=((String)(prolist.get(i))).split(":");%>
	<tr>
	<td><%= prod[0] %></td>
	<td><%= prod[1] %></td>
	<td><%= prod[2] %></td>
	<td><%= prod[3] %></td>
	<td><img src="images/<%= prod[4] %>" alt="Wrong name" width=200 height=160></td>
	</tr>
<%} %>

</tbody>
</table>
</div>
<script type="text/javascript">
var v1=document.getElementById("tab1");
var p1=document.getElementById("panel1");

var v2=document.getElementById("tab2");
var p2=document.getElementById("panel2");

var v3=document.getElementById("tab3");
var p3=document.getElementById("panel3");
p1.style.display="block";

v1.addEventListener("click",function(){
   
    
   
    p1.style.display="block";
    p2.style.display="none";
    p3.style.display="none";
   
    v2.style.background=" rgb(151, 36, 151)";
    v3.style.background=" rgb(151, 36, 151)";
    v1.style.color="gold";
    v1.style.background="black";
})



v2.addEventListener("click",function(){
   
    p1.style.display="none";
    p3.style.display="none";
   
    p2.style.display="block";
    v1.style.background=" rgb(151, 36, 151)";
    v3.style.background=" rgb(151, 36, 151)";
    v2.style.color="gold";
    v2.style.background="black";
})

v3.addEventListener("click",function(){
   
    p1.style.display="none";
   p2.style.display="none";
    p3.style.display="block";
    v1.style.background=" rgb(151, 36, 151)";
    v2.style.background=" rgb(151, 36, 151)";
    v3.style.color="gold";
    v3.style.background="black";
})
</script>
</body>
</html>