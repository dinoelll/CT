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
            margin: 50px;
        }

        /* 표의 스타일 */
        table {
 
            border-collapse: collapse;
            border: 1px solid #ddd;
            display: none; /* 표 시작시 숨김 */
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
 		 <h1 id="toggle94">9/4</h1>
    <table id="table94">
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
10	5	2
7	2	3
                        
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
        answer = num1 % num2;
        return answer;
    }
                        </code>
                    </pre>
                    나머지를 구하려면 %, 몫을 구하려면 / 를 사용하면 된다.
                    
                </td>
	 		</tr>
	 		
	 		
	 		<tr>
	 			<th>몫 구하기</th>
	 			<td>
                    <pre>
                        <code>
문제 설명
정수 num1, num2가 매개변수로 주어질 때, num1을 num2로 나눈 몫을 return 하도록 solution 함수를 완성해주세요.

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
        answer = num1 / num2;
        return answer;
    }
                        </code>
                    </pre>
                </td>
	 		</tr>
	 			<tr>
	 			<th >연도 구하기</th>
	 			<td>
                    <pre>
                        <code>
머쓱이는 40살인 선생님이 몇 년도에 태어났는지 궁금해졌습니다. 나이 age가 주어질 때, 2022년을 기준 출생 연도를 return 하는 solution 함수를 완성해주세요.


0 < age ≤ 120
나이는 태어난 연도에 1살이며 1년마다 1씩 증가합니다.

입출력 예
age	result
40	1983
23	2000
                        
class Solution {
    public int solution(int age) {
        int answer = 0;
        return answer;
    }
}
                        </code>
                    </pre>
                </td>
	 			<td>
                    <pre>
                        <code>
class Solution {
    public int solution(int age) {
        int answer = 0;
        answer = 2023-age;
        return answer;
    }
}
                        </code>
                    </pre>
                    2023-age 하는것보다는
                    2022-age+1을 하는게 문제 답에 더 가까운 것 같다.
                    
                </td>
	 		</tr>
		</table>
		
		<h1 id="toggle95">9/5</h1>
    <table id="table95">
	 		<tr style="height: 10%">
	 			<th>유형</th>
	 			<td>문제</td>
	 			<td>정답</td>
	 		</tr>
	 		<tr>
	 			<th >두 수의 나눗셈</th>
	 			<td>
                    <pre>
                        <code>
문제 설명
정수 num1과 num2가 매개변수로 주어질 때, num1을 num2로 나눈 값에 1,000을 곱한 후 정수 부분을 return 하도록 soltuion 함수를 완성해주세요.

제한사항
0 < num1 ≤ 100
0 < num2 ≤ 100
입출력 예
num1	num2	result
3	2	1500
7	3	2333
1	16	62
입출력 예 설명
입출력 예 #1

num1이 3, num2가 2이므로 3 / 2 = 1.5에 1,000을 곱하면 1500이 됩니다.
입출력 예 #2

num1이 7, num2가 3이므로 7 / 3 = 2.33333...에 1,000을 곱하면 2333.3333.... 이 되며, 정수 부분은 2333입니다.
입출력 예 #3

num1이 1, num2가 16이므로 1 / 16 = 0.0625에 1,000을 곱하면 62.5가 되며, 정수 부분은 62입니다.
                        
class Solution {
    public int solution(int num1, int num2) {
        int answer = 0;
        return answer;
    }
}
                        </code>
                    </pre>
                </td>
	 			<td>
                    <pre>
                        <code>
정답

class Solution {
    public int solution(int num1, int num2) {
        float answer = (float)num1/num2;
        return (int)(answer*1000); 
    }
}
                        </code>
                        </pre>
                        
                        <pre>
                        <code>
틀린예시

class Solution {
    public int solution(int num1, int num2) {
        float answer = (float)((num1/num2)*1000);
        System.out.println(answer);
        return (int)(answer); 
    }
}
이거에 대한 답은 1000.0 , 2000.0 , 0.0 이 나온다. int 상태에서 나눗셈을 해줬기 때문에 1이 나왔을꺼고 거기에 1000을 곱하니까 1000이 나왔을꺼다.
                        </code>
                        </pre>
                    
                    캐스팅과 사칙연산을 잘 이용해야한다.
                    주의점 : 어디서 캐스팅 해줄지, 괄호는 어디까지 쳐야하는지가 굉장히 중요하다.
                    
                    재미있다 *^^*
                    
                </td>
	 		</tr>
	 		
	 		
	 		<tr>
	 			<th>몫 구하기</th>
	 			<td>
                    <pre>
                        <code>
문제 설명
정수 num1, num2가 매개변수로 주어질 때, num1을 num2로 나눈 몫을 return 하도록 solution 함수를 완성해주세요.

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
        answer = num1 / num2;
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
		</table>
		
		 <h1 id="toggle96">9/6</h1>
    <table id="table96">
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
10	5	2
7	2	3
                        
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
        answer = num1 % num2;
        return answer;
    }
                        </code>
                    </pre>
                    나머지를 구하려면 %, 몫을 구하려면 / 를 사용하면 된다.
                    
                </td>
	 		</tr>
	 		
	 		
	 		<tr>
	 			<th>몫 구하기</th>
	 			<td>
                    <pre>
                        <code>
문제 설명
정수 num1, num2가 매개변수로 주어질 때, num1을 num2로 나눈 몫을 return 하도록 solution 함수를 완성해주세요.

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
        answer = num1 / num2;
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
		</table>
		
		
 	</form>
	
<script>
$(document).ready(function() {
    // "9/4" 텍스트를 클릭하면 관련 테이블을 토글로 표시 또는 숨깁니다.
    $("#toggle94").click(function() {
        $("#table94").toggle();
    });

    // "9/5" 텍스트를 클릭하면 관련 테이블을 토글로 표시 또는 숨깁니다.
    $("#toggle95").click(function() {
        $("#table95").toggle();
    });

    // "9/6" 텍스트를 클릭하면 관련 테이블을 토글로 표시 또는 숨깁니다.
    $("#toggle96").click(function() {
        $("#table96").toggle();
    });
});
</script>
</body>
