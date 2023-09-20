<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
        body {
            background-color: hotpink;
        }

        h1 {
            text-align: center;
            transition: all 0.1s;

        }

        h1:hover {
            color: red;
        }

        a {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            transition: width;

        }

        a:hover {
            padding: 30px;
            color: yellow;
            font-size: larger;
            font-family: sans-serif;
        }

        form {
            transition: all 1s;
            background-color: aqua;
            border-color: antiquewhite;
            border-style: solid;
            margin: 10%;
            width: 60%;
            height: 150%;
            padding: 5%;
        }

        #btn:hover {
            background-color: blanchedalmond;
            width: 50%;
            color: rgb(15, 14, 14);

        }

       
        #btn {
            size: 50px;
            width: 20%;
            border-color: aliceblue;
            height: 35px;
            background-color: green;
            color: coral;
            transition: all 0.4s linear;
        }

        input {

            width: 50%;

            position: relative;
            height: 30px;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }

        #rem {
            width: auto;

            float: left;
            height: 15px;
        }


        .in {

            border-color: rgb(0, 0, 0);
            border: 1px;
            border-style: solid;
            transition: 0.6s;
        }

        .in:hover {
            width: 50%;
            height: 50px;

            color: rgb(47, 12, 100);
            border: 10px;
            font-family: cursive;
            border-color: black;
            border-radius: 19px;
            background-color: rgb(143, 206, 188);

        }

        form:hover {
            
            height: 70%;

           
        }
    </style>
</head>

<body>
    <h1> <b> User Login Form</b></h1>
    <form action="log" method="post">
        <header>User Name:</header>
        <input type="text" placeholder="Your Name" class="in" name="name" />
        <br />
        <br>
        <header>Password</header>
        <input type="password" placeholder="Your Password" class="in" name="password"/>
        <br />
        <br>
      <button class="in" id="btn">Login</button>

        <br />
        <br>

        <br />
        <br>

       <label>Don't have an account?</label><a href="register.jsp">Create Account</a>

        <br />
  
    </form>
</body>

</html>