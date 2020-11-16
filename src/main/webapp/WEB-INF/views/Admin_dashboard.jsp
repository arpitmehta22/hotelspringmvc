<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="header">
    <jsp:include page="include/header.jsp" />
</div>

<h1 align="center"> Admin Dashboard</h1>
 <div align="center">
    <h1>UserName : ${user.username}</h1>
    </div>
  <div  class="jumbotron">
  
<a href="profile"><h2> Profile  </h2></a>  
<a href="registeremployee"><h2> Add new Employee  </h2></a>        
<a href="employee_info"><h2> all employee info !! </h2></a>    
<a href="room_s/"><h2> Room Service board !! </h2></a>
<a href="booking/"><h2> Bookings board !! </h2></a>

<a href="room_invent/"><h2> Inventory    !! </h2></a>


<a href="coupon/"><h2> Coupons   </h2></a>
<a href="invoice/"><h2> Invoice   </h2></a>

<a href="/customer/foodorders"><h2> Foodorders   </h2></a>
</div>
 <div class="jumbotron" align="center">
	 
	    <form:form action="salary/" method="post" modelAttribute="salarypayment">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2 align="center">Salary Payment</h2></td>
                </tr>
         
                 <tr>
                    <td>employee ID :</td>
                    <td><form:select path="customer_id" >
                        <c:forEach items="${emps}" var="emp">
   
                    <form:option value="${emp.employee_id}"/>
                    </c:forEach>
                   
                   </form:select> 
                    
                    </td>
                  
                </tr>
              
                
                <tr>
                     <td>Amount :</td>
                     <td><form:input path="amount" /></td>
                     
                </tr>
                 
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit" /></td>
                </tr>
            </table>
        </form:form>

	</div>
	




</body>
</html>