<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Page</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
    <link rel="shortcut icon" href="<c:url value="/resources/image/form.png"/>" type="image/png">
   	<link href="<c:url value="/resources/CSS/design.css"/>" rel="stylesheet">
</head>
<body>
    <div class="container">
    <form action="handleform" method="post" enctype="multipart/form-data">
        <fieldset>
            <legend>
                <h1>Registration</h1>
            </legend>
        <div class="alert " role="alert">
  			<form:errors path="employee.*"/>
		</div>
        <h2 class="heading1">Personal Information</h2>
        <div class="firstname">
            First Name:<input type="text" required="required" placeholder="firstname" name="firstname">
        </div>
        <div class="lastname">
            Last Name: <input type="text" required="required" placeholder="lastname" name="lastname">
        </div>
        <div class="dob">
            DOB: <div class="date"><input type="date" required="required" placeholder="dd/mm/yyyy" name="dob"></div>
        </div>   
        <div class="gender">
            Gender: 
            <div class="gender_box">
                Male <input type="radio" required="required" name="gender" value="m"><span class="tab"></span>
                Female <input type="radio" required="required" name="gender" value="f"><span class="tab"></span>
                Other <input type="radio" required="required" name="gender" value="o">
            </div>
        </div>
        <h2 class="heading2">Account Information</h2>
        <div class="email">
            Email: <input type="email" required="required" name="email" placeholder="your email">
        </div>
        <div class="password">
            Password: <input type="password" required="required" name="password" placeholder="password">
        </div>
        <div class="file">
            Resume:<input type="file" required="required" name="file" >
            
        </div>
        <button class="start glow-on-hover">submit</button>

    </fieldset>
    </form>
    </div>
</body>
</html>