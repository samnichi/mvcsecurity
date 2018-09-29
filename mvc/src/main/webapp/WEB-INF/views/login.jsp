<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<html>
    <body>
        <h1 id="banner">Login to Security Demo!</h1> 
         <c:if test="${not empty param.error}">
            <div style="color:red">
                LoginID or Password incorrect !!<br />
            </div>
        </c:if>
        <form name="f" action="<c:url value='j_spring_security_check'/>"
                    method="POST">
            <table>
                <tr>
                    <td>Username:</td>
                    <td><input type='text' name='j_username' /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type='password' name='j_password'></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan='2'><input name="submit" type="submit">&nbsp;</td>
                </tr>
            </table>
        </form>
    </body>
</html>