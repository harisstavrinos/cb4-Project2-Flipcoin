<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Welcome</title>
<mvc:resources mapping="/resources/**" location="/resources/" />
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <style>
     <%@ include file="../resources/index.css"%>
</style> 
    	
    <script type="text/javascript" >
    <%@ include file="../resources/index.js"%>
    </script>    

<!-- <link href="../resources/index.css" rel="stylesheet">  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


</head>

<body>

    <nav class="main-nav">
        <ul>
  
            <li>
                <a class="signin" href="#0">Sign in</a>
            </li>
            <li>
                <a class="signup" href="#0">Sign up</a>
            </li>
        </ul>
    </nav>

    <div class="user-modal">
        <div class="user-modal-container">
            <ul class="switcher">
                <li>
                    <a href="#0">Sign in</a>
                </li>
                <li>
                    <a href="#0">New account</a>
                </li>
            </ul>

            <div id="login">
                <form:form modelAttribute="user" class="form" id="form" action="menu.htm" name="loginform"  method="post">
                    <!-- <p class="fieldset">
                        <label class="image-replace email" for="signin-email">UserName</label>
                        <input class="full-width has-padding has-border" id="signin-email" type="text" placeholder="UserName">
                        <span class="error-message">An account with this username does not exist!</span>
                    </p> -->

                    <p class="fieldset">
                        <label class="image-replace username" for="signup-username">Username</label>
                        <form:input path="username" class="full-width has-padding has-border" id="signin-username"  type="text" placeholder="Username"/>
                        <span class="error-message">An account with this username does not exist!</span>
                    </p>
                    

                    <p class="fieldset">
                        <label class="image-replace password" for="signin-password">Password</label>
                        <form:input path="password" class="full-width has-padding has-border" id="signin-password"  type="password" placeholder="Password"/>
                        <a href="#0" class="hide-password">Show</a>
                        <span class="error-message">Wrong password! Try again.</span>
                    </p>

                    <!-- <p class="fieldset">
                        <input type="checkbox" id="remember-me" checked>
                        <label for="remember-me">Remember me</label>
                    </p> -->

                    <p class="fieldset">
                        <input class="full-width" type="submit" value="Login" id="loginButton">
                    </p>
                </form:form>

                <p class="form-bottom-message">
                    <a href="#0">Forgot your password?</a>
                </p>
                <!-- <a href="#0" class="close-form">Close</a> -->
            </div>

            <div id="signup">
                <form:form modelAttribute="user" id="signupForm" class="form"    action="registerUser.htm" name="signupform" method="POST">
                    <p class="fieldset">
                        <label class="image-replace username" for="signup-username">Username</label>
                        <form:input path="username" class="full-width has-padding has-border" id="signup-username" name="signupUsername" type="text" placeholder="Username"/>
                        <span class="error-message">Your username can only contain numeric and alphabetic symbols!</span>
                    </p>

                 <!--    <p class="fieldset">
                        <label class="image-replace email" for="signup-email">E-mail</label>
                        <input class="full-width has-padding has-border" id="signup-email"   type="email" placeholder="E-mail">
                        <span class="error-message">Enter a valid email address!</span>
                    </p> -->

                    <p class="fieldset">
                        <label class="image-replace password" for="signup-password">Password</label>
                        <form:input path="password" class="full-width has-padding has-border" id="signup-password"  type="password" name="pwd1" placeholder="Password"/>
                        <a href="#0" class="hide-password">Show</a>
                        <span class="error-message">Your password has to be at least 6 characters long!</span>
                    </p>

                    <!-- <p class="fieldset">
                        <input type="checkbox" id="accept-terms">
                        <label for="accept-terms">I agree to the
                            <a class="accept-terms" href="#0">Terms</a>
                        </label>
                    </p> -->

                    <p class="fieldset">
                        <input id="submitRegister" class="full-width has-padding" type="submit" value="Create account">
                    </p>
                </form:form>

                <!-- <a href="#0" class="cd-close-form">Close</a> -->
            </div>

            <div id="reset-password">
                <p class="form-message">Lost your password? Please enter your email address.</br> You will receive a link to create a new password.</p>

                <form class="form" action="#">
                    <p class="fieldset">
                        <label class="image-replace email" for="reset-email">E-mail</label>
                        <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
                        <span class="error-message">An account with this email does not exist!</span>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding" type="submit" value="Reset password">
                    </p>
                </form>

                <p class="form-bottom-message">
                    <a href="#0">Back to log-in</a>
                </p>
            </div>
            <a href="#0" class="close-form">Close</a>
        </div>
    </div>

  

</body>

</html>