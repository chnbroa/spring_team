<%--
  Created by IntelliJ IDEA.
  User: chnbr
  Date: 2023-10-27
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>팀 조회</title>
  <script>
    function list() {
      let url = "list";
      url += "?col=${param.col}";
      url += "&word=${param.word}";
      url += "&nowPage=${param.nowPage}";
      location.href=url;
    }

    function update(teamno){
      let url  ="update";
      url +="?nowPage=${param.nowPage}";
      url +="&col=${param.col}";
      url +="&word=${param.word}";
      url +="&teamno=" + teamno;
      location.href=url;
    }

    function  del(teamno){
      if(confirm("정말 삭제합니까?")){
        let url  ="delete";
        url +="?nowPage=${param.nowPage}";
        url +="&col=${param.col}";
        url +="&word=${param.word}";
        url +=`&teamno=`+ teamno;
        location.href=url;
      }
    }
  </script>
</head>
<body>
<div class="container mt-3">
  <h2> 조회 </h2>
  <ul class="list-group">
    <li  class="list-group-item list-group-item-action">이 름: ${dto.tname}</li>
    <li  class="list-group-item list-group-item-action">기 술: ${dto.skills}</li>
    <li  class="list-group-item list-group-item-action">전화번호: ${dto.phone}</li>
    <li  class="list-group-item list-group-item-action">주 소: ${dto.address}</li>
    <li  class="list-group-item list-group-item-action">우편번호: ${dto.zipcode}</li>
    <li  class="list-group-item list-group-item-action">성 별: ${dto.gender}</li>
    <li  class="list-group-item list-group-item-action">등록날짜: ${dto.rdate}</li>

  </ul>
  <br>
  <button type="button" class="btn btn-success" onclick="location.href='create'" >생성</button>
  <button type="button" class="btn btn-success" onclick="update('${dto.teamno}')" >수정</button>
  <button type="button" class="btn btn-success" onclick="del('${dto.teamno}')" >삭제</button>
  <button type="button" class="btn btn-success" onclick="list()" >목록</button>

</div>
</body>
</html>