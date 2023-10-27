<%--
  Created by IntelliJ IDEA.
  User: chnbr
  Date: 2023-10-26
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>팀 생성</title>
</head>
<body>
<div class="container mt-3">
    <h2>팀 생성</h2>
    <form action="create" method="post">
        <div class="mb-3 mt-3">
            <label for="tname">이름: </label>
            <input type="text" class="form-control" id="tname" placeholder="이름 입력" name="tname">
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
        </div>

        <div class="mb-3 mt-3">
            <label for="phone">전화번호: </label>
            <input type="text" class="form-control" id="phone" placeholder="전화번호 입력" name="phone">
        </div>

        <div class="mb-3 mt-3">
            <label for="address">주소: </label>
            <input type="text" class="form-control" id="address" placeholder="주소 입력" name="address">
        </div>
        <div class="mb-3 mt-3">
            <label for="zipcode">우편번호: </label>
            <input type="text" class="form-control" id="zipcode" placeholder="우편번호 입력" name="zipcode">
        </div>

        <div class="mb-3 mt-3">
            <label for="gender">성별: </label>
            <select class="form-select form-select-sm" id="gender" name="gender">
                <option value="남" >남</option>
                <option value="여" >여</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
