<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fosm" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Marab
  Date: 03.03.2023
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>

<h2>Dear employee, please enter your details.</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee" method="post">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>

<%--    <form:option value="Information Technology" label="IT"/>--%>
<%--    <form:option value="Human Resouces" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
</form:select>
    <br><br>
    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    AUDI <form:radiobutton path="carBrand" value="AUDI"/>--%>
<%--    Mercedes <form:radiobutton path="carBrand" value="Mercedes"/>--%>
    <br> <br>
    Foreign language(s)
    <form:checkboxes path="languages" items="${employee.languageList}"/>
<%--    EN<fosm:checkbox path="languages" value="English"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>
    <br><br>
    PhoneNumber: <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email: <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>


    <input type="submit" value="OK">

</form:form>


</body>

</html>
