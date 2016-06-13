<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>custoemr index</title>
</head>
<body>
<h3>所有客户 <a href="/customer/add" type="button" class="btn btn-primary btn-sm">添加</a></h3>

<table class="table table-bordered table-striped">
    <tr>
        <th>客户名字</th>
        <th>手机账号</th>
        <th>银行卡</th>
        <th>操作</th>
    </tr>
    <c:if test="${!empty customers}">
        <c:forEach items="${customers}" var="customer">
            <tr>
                <td>${customer.customerName}</td>
                <td>${customer.mobile}</td>
                <td>${customer.bankCard}</td>
                <td><a href="#" type="button" class="btn btn-sm btn-warning">修改</a></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
</body>
</html>