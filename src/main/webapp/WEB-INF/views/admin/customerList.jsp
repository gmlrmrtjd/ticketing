<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My First Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>

<my:navBar/>


<div class="container-md">
    <div class="row">
        <div class="col">
            <h1>회원 목록</h1>
            <!-- table.table>thead>tr>th*4^^tbody -->
            <table class="table">
                <thead>
                <tr>
                    <th>아이디</th>
                    <th>별명</th>
                    <%--							<th>패스워드</th>--%>
                    <th>이메일</th>
                    <th>등급</th>
                    <th>어드민 기능</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${customerList }" var="customer">
                    <tr>
                        <td>
                            <c:url value="/customer/get" var="infoLink">
                                <c:param value="${customer.customerUniqueNumber }" name="customerUniqueNumber"/>
                            </c:url>
                            <a href="${infoLink }">
                                    ${customer.customerUniqueNumber  }
                            </a>
                        </td>
                        <td>${customer.customerName }</td>
                            <%--								<td>${member.password }</td>--%>
                        <td>${customer.customerEmail }</td>
                        <td>${customer.customerGrade }</td>
                        <td>
                            <div>
                                <select id="customerGrade" class="form-control">
                                    <c:forEach items="${gradeList}" var="grade">
                                        <option><c:out value="${grade.customerGrade}"/></option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div>
                                <input type="button" value="반영">
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>









