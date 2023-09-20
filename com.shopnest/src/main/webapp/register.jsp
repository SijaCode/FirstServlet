<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>body {
    background-color:#FFFFFF;
}
.error
{
    color:red;
}
#sub
{
    width:50%;
    padding:3%;
}

p,span
{
    font-size:20px;
   
}

input
{

   border-left:0px;
   border-Right:0px;
   border:1;
   border-color:cyan;
   border-top:0px;
   padding:2%;
   color:coral;
   background-color:#FFFFFF;
   font-size:20px;
   width:80%;
  
}
           
        </style>
       
       
    </head>
    <body>

<a href="login.jsp">Login</a>




        <form name="student_reg" method="post" action="reg" >
                <p>USER NAME:</p>
               
  <input type="text" id="name" name="uname" value="" >
    <span class="error"><p id="name_error"></p></span>

                <p>EMAIL:</p>
                <input type="text" name="mail" value="" >
                <span class="error"><p id="email_error"></p></span>




<p>AGE:</p>
                <input type="number" name="age" value="" >
                <span class="error"><p id="roll_no_error"></p></span>
               

              
              
              
                <p>PASSWORD:</p>
                <input type="password" name="pass" value="" >
                <span class="error"><p id="password_error"></p></span>

               
                <br/>
                <br/>
                <br/>
                

            <button id="sub"  >Submit</button>
</form>




<script>
    
    

function validateForm()
{
var error = 0;
// var a = document.forms["student_reg"]["name"].value;
var a=document.getElementById ('name').value;
   document.getElementById('name_error').innerHTML = '';
   if ( a==null ||a == "")
   {
//alert("Name must be filled out");
error++;
  document.getElementById('name_error').innerHTML = 'Name must be filled out';
  return false;
   }
  
  
    var b = document.forms["student_reg"]["mail"].value; document.getElementById('email_error').innerHTML = ''; if (b == null || b == "") {  //alert("Email must be filled out");
     error++; document.getElementById('email_error').innerHTML = 'Email must be filled out';return false; }
   
   
   
     var e = document.forms["student_reg"]["age"].value; document.getElementById('roll_no_error').innerHTML = ''; if (e == null || e == "") {  //alert("Roll no must be filled out");
      error++; document.getElementById('roll_no_error').innerHTML = 'Age must be filled out'; return false;}
     
     
     
     

    
    
    
    
      var d = document.forms["student_reg"]["pass"].value; document.getElementById('password_error').innerHTML = ''; if (d == null || d == "") {  //alert("Password must be filled out");
       error++; document.getElementById('password_error').innerHTML = 'Password must be filled out';
     return false; }
     
      if(error>0) { return false; }
      else
      {
         
       
          return false;
      }
        }

     
     
     
</script>
</body>
</html>