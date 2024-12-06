<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MySQL DB 查詢範例</title>

<script type="text/javascript">
debugger;
	let errMsg = '${errMsg}';
	if (errMsg != ''){
		alert(errMsg);
	}

</script>
<style>
   body {
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh; /* 視窗高度 */
      background-color: lavender;
      font-family: Arial, sans-serif;
      font-size: 20px;
  }
   
   .container {
      display: flex;
      flex-direction: column; /* 垂直排列 */
      justify-content: center;
      align-items: center;
      background-color: #fff;
      border: 1px solid #ccc;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }
    .form-group {
      margin-bottom: 15px;
      display: flex;
      flex-direction: column;
      width: 100%;
      font-size:1em;
      
  }
  	table {
      margin-top: 20px;
      border-collapse: collapse;
      width: 100%;
  }
  	th {
      padding: 8px;
  }
  	td{
  	 padding: 8px;
  }
</style>
</head>
<body>
<div class = "container">
	<form action="doQueryCity" method="post">

		<span style= "color:red">*</span>
		
<!-- 		<select name=countryCode> -->
<%-- 			<c:forEach items="${countryCodeList }" var="item" varStatus="status"> --%>
<%-- 				<option value="${item.countrycode }">${item.countrycode }</option> --%>
<%-- 			</c:forEach> --%>
			
<!-- 		</select> -->

		CountryCode <br> <input type="text" class="form-group" name="countryCode" value="${countryCode }">
		District <br> <input type="text" class="form-group" name="district" value="${district }">
		
		<input class= "form-group" type="submit" value="Submit">
	</form>
	<hr/>
	<table>
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>CountryCode</td>
			<td>District</td>
			<td>Population</td>
		</tr>
		<c:if test="${not empty cityRst }">
			<c:forEach items="${cityRst}" var="item" varStatus="status">
				<tr>
					<td>${item.ID }</td>
					<td>${item.Name }</td>
					<td>${item.CountryCode }</td>
					<td>${item.District }</td>
					<td>${item.Population }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</div>
</body>
</html>
