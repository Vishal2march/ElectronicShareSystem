<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>      
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${todo}" />
<fmt:setBundle basename="com.example.language.text" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="hide-sidebar ls-bottom-footer" lang="${todo}">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Enter Code</title>
<link href="css/vendor.min.css" rel="stylesheet">
<link href="css/theme-core.min.css" rel="stylesheet">
<link href="css/module-essentials.min.css" rel="stylesheet" />
<link href="css/module-layout.min.css" rel="stylesheet" />
<link href="css/module-sidebar.min.css" rel="stylesheet" />
<link href="css/module-sidebar-skins.min.css" rel="stylesheet" />
<link href="css/module-navbar.min.css" rel="stylesheet" />
<link href="css/module-timeline.min.css" rel="stylesheet" />
<link href="css/module-cover.min.css" rel="stylesheet" />
<link href="css/module-chat.min.css" rel="stylesheet" />
<link href="css/module-maps.min.css" rel="stylesheet" />
</head>
 <body class="login">
    <div id="content">
        <div class="container-fluid">
            <div class="lock-container">
                <h1>Account Access</h1>
                
    <body>
        
                    <div class="panel panel-default text-center">
                    <img src="<%= request.getContextPath()%>/images/1.jpg" style="height: 110px; width: 110px;" class="img">
                    <div class="panel-body">
                   		<form action="LoginServlet">
                   		<br>
                   		<label for="username"><fmt:message key="login.label.username" />:</label>
                    	<input class="form-control" type="email" name="email" placeholder="Email">
                    	<br>
                    	 <label for="password"><fmt:message key="login.label.password" />:</label>
                        <input class="form-control"  type="password" name="pd" placeholder="Password">
                        <%

							if (request.getAttribute("error") == null || request.getAttribute("error").equals(""))
							{
								//out.print("First Time<br>");
							}
							else
							{
								
								String Error = (String) request.getAttribute("error");
								//out.print(Error);
								
								if ((Error.equalsIgnoreCase("usernotfound")))
								{
									out.print("<font color=red>User is not Exist.</font> <br>");
								}
								else if ((Error.equalsIgnoreCase("invalidpassowrd")))
								{
									out.print("<font color=red>Password is Incorrect.</font><br>");
								}
							}
                          %>
                        <fmt:message key="login.button.submit" var="buttonValue" />
                                                                
							<tr>
									<td colspan="2"><input type="submit"
										class="btn btn-primary" name="submit" value="${buttonValue}"></td>
								</tr>
                        
                        
                       
                       
                         <a href="forgotpassword.jsp" class="forgot-password">Forgot password?</a> 
                        <a href="registerketan.jsp" class="forgot-password">Register Now</a> 
                       </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    var colors = {
        "danger-color": "#e74c3c",
        "success-color": "#81b53e",
        "warning-color": "#f0ad4e",
        "inverse-color": "#2c3e50",
        "info-color": "#2d7cb5",
        "default-color": "#6e7882",
        "default-light-color": "#cfd9db",
        "purple-color": "#9D8AC7",
        "mustard-color": "#d4d171",
        "lightred-color": "#e15258",
        "body-bg": "#f6f6f6"
    };
    var config = {
        theme: "social-1",
        skins: {
            "default": {
                "primary-color": "#16ae9f"
            },
            "orange": {
                "primary-color": "#e74c3c"
            },
            "blue": {
                "primary-color": "#4687ce"
            },
            "purple": {
                "primary-color": "#af86b9"
            },
            "brown": {
                "primary-color": "#c3a961"
            }
        }
    };
    </script>
        
    <script src="<%= request.getContextPath()%>js/vendor-core.min.js"></script>
    <script src="<%= request.getContextPath()%>js/vendor-tables.min.js"></script>
    <script src="<%= request.getContextPath()%>js/vendor-forms.min.js"></script>
    <script src="<%= request.getContextPath()%>js/vendor-maps.min.js"></script>
    <script src="<%= request.getContextPath()%>js/module-essentials.min.js"></script>
    <script src="<%= request.getContextPath()%>js/module-layout.min.js"></script>
    <script src="<%= request.getContextPath()%>js/module-sidebar.min.js"></script>
    <script src="<%= request.getContextPath()%>js/module-timeline.min.js"></script>
    <script src="<%= request.getContextPath()%>js/module-chat.min.js"></script>
    <script src="<%= request.getContextPath()%>js/module-maps.min.js"></script>
    <script src="<%= request.getContextPath()%>js/theme-core.min.js"></script>
        
</body>
</html>
