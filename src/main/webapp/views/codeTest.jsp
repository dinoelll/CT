<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
 <style>
        /* 중앙 정렬을 위한 스타일 */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* 표의 스타일 */
        table {
 
            border-collapse: collapse;
            border: 1px solid #ddd;
        }

        th, td {
            padding: 8px;
            text-align: center;
            border: 1px solid #ddd;
        }


        th {
            background-color: #f2f2f2;
            
        }
         /* 코드 블록 스타일 */
        pre {
            background-color: #f0f0f0;
            padding: 10px;
            border: 1px solid #ccc;
            overflow-x: auto;
        }
    </style>
</head>
<body>
 	<form action="login.do" method="post">
 		<h1>9/4</h1>
	 	<table>
	 		<tr style="height: 10%">
	 			<th>유형</th>
	 			<td>문제</td>
	 			<td>정답</td>
	 		</tr>
	 		<tr>
	 			<th >두수의 곱</th>
	 			<td>
                    <pre>
                        <code>
문제 설명
정수 num1, num2가 매개변수 주어집니다. num1과 num2를 곱한 값을 return 하도록 solution 함수를 완성해주세요.

제한사항
0 ≤ num1 ≤ 100
0 ≤ num2 ≤ 100

입출력 예
num1	num2	result
3	4	12
27	19	513
                        
class Solution {
    public int solution(int num1, int num2) {
        int answer = 0;
        return answer;
    }
                        </code>
                    </pre>
                </td>
	 			<td>
                    <pre>
                        <code>
class Solution {
    public int solution(int num1, int num2) {
        int answer = 0;
        answer = num1 * num2;
        return answer;
    }
                        </code>
                    </pre>
                </td>
	 		</tr>
	 		<tr>
	 			<th></th>
	 			<td></td>
	 			<td></td>
	 		</tr>
	 		<tr>
	 			<th></th>
	 			<td></td>
	 			<td></td>
	 		</tr>
		</table>
 	</form>
	

</body>
<script>