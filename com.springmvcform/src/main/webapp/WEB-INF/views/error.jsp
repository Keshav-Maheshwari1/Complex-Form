<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error!</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        body{
            background-color: rgb(202, 196, 196);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            
        }
        footer{
            margin-top: auto;
            background-color: rgb(114, 125, 134);
            width: 100%;
            height: 20rem;
            padding: 1rem;
            padding-left: 4rem;
            justify-content: center;

        }
        .contact{
           font-size: 3rem;
            margin-bottom: 3rem;
        }
        .email_info{
            font-size: 1.5rem;
           
        }

        .container{
            margin: auto;
            height: fit-content;
            width: fit-content;
        }
        .error{
            font-size: 4rem;
            margin-bottom: 3rem;
        }
        .name{
            font-size: 2.3rem;
            color: rgba(0, 0, 0, 0.628);
            margin-bottom: 1.3rem;
        }
        .desc{
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <center>
            <h1 class="error">Oops! Error</h1>
            <h3 class="name">${msg} </h3>
            <p class="desc">Sorry, an error has occurred. Requested page not found!</p>
            <a href="http://localhost:8080/com.springmvcform/home">Redirect to Home Page</a>
        </center>
        
    </div>
    <footer>
        <h1 class="contact">Contact Us</h1>
        <h3 class="email_info">
            Email: maheshwarikeshav029@gmail.com></a>
            <br>
            <br>
            Chat:  9993312857
        </h3>
    </footer>
</body>