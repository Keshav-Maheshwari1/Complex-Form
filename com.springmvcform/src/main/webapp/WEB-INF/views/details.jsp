<%@ page isELIgnored = "false" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <style>

        body{
            background-image: url("https://bitsbox.com/img/blog-eight-non-coding-jobs.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 3rem;
        }
        .container{
            padding: 2rem;
            background-color: black;
            width: fit-content;
            height: fit-content;
            opacity: 0.7;
        }
        h1{
            color: white;
        }
        h3{
        	color: white;
        }
        
    </style>
</head>
<body>
    <div class="container">

    	<h1>Your Data is Successfully Submitted </h1>

        <h3>Name: ${employee.firstname} ${employee.lastname } </h3>
        <h3>Gender: ${employee.gender }</h3>
        <h3>DOB: ${employee.dob }</h3>
        <h3>Email: ${employee.email }</h3>
		
    </div>

</body>
</html>