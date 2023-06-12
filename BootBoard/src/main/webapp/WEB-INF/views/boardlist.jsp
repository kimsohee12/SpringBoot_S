<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>풀스택반 게시판😎😎</h2>
  <div class="panel panel-default">
    <div class="panel-heading">게시판</div>
    <div class="panel-body" id="list">
         <table class="table table-bordered">
          <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>삭제</th>
            </tr>
            <c:forEach items ="${boards}" var = "board">
            	<tr>
            		<td>${board.idx}</td>
            		<td>${board.title}</td>
            		<td>${board.writer}</td>
            		<td>${board.indate}</td>
            	</tr>
            </c:forEach>
            
          </thead>
          <tbody>
         <!-- 게시물 출력 -->
            <tr>
               <td colspan="4">
                  <button onclick="location.href='board/writeform'" class="btn btn-sm btn-success">글작성</button>
               </td>
            </tr>
          </tbody>
        </table>
    
    </div>
    <div class="panel-footer">FullStack SW융합 실무부트캠프 (담임 : 강예진)</div>
  </div>
</div>
</body>
</html>