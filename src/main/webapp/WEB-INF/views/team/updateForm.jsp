<%--
  Created by IntelliJ IDEA.
  User: chnbr
  Date: 2023-10-27
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>팀 수정</title>
</head>
<body>
<div class="container mt-3">
  <h2>팀 수정</h2>
  <form action="update" method="post">
    <input type="hidden" name="teamno" value="${dto.teamno}">
    <input type="hidden" name="col" value="${param.col}">
    <input type="hidden" name="word" value="${param.word}">
    <input type="hidden" name="nowPage" value="${param.nowPage}">
    <div class="mb-3 mt-3">
      <label for="tname">이름: </label>
      <input type="text" class="form-control" id="tname"  value="${dto.tname}"  name="tname">
    </div>

    <div class="mb-3 mt-3">
      <label>기술: </label>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="java" name="skills" value="java">
        <label class="form-check-label" for="java">java</label>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="C++" name="skills" value="C++">
        <label class="form-check-label" for="C++">C++</label>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="javaScript" name="skills" value="javaScript">
        <label class="form-check-label" for="javaScript">javaScript</label>
      </div>
      <c:forTokens var="list" items="${dto.skills}" delims=",">
        <script>
          document.getElementById('${list}').checked = true;
        </script>
      </c:forTokens>
    </div>


    <div class="mb-3 mt-3">
      <label for="phone">전화번호: </label>
      <input type="text" class="form-control" id="phone"  value="${dto.phone}"  name="phone">
    </div>

    <div class="mb-3 mt-3">
      <label for="address">주소: </label>
      <input type="text" class="form-control" id="address"  value="${dto.address}"  name="address">
    </div>
    <div class="mb-3 mt-3">
      <label for="zipcode">우편번호: </label>
      <input type="text" class="form-control" id="zipcode"  value="${dto.zipcode}"  name="zipcode">
    </div>


<%--    체크 설정 --%>
    <div class="mb-3 mt-3">
      <label for="gender">성별: </label>
      <select class="form-select form-select-sm" id="gender" name="gender">
        <option value="남"
                <c:if test="${dto.gender eq '남'}">selected</c:if>
        >남</option>
        <option value="여"
                <c:if test="${dto.gender eq '여'}">selected</c:if>
        >여</option>
      </select>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>
