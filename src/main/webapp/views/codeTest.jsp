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
	 			<th >분수의 덧셈</th>
	 			<td>
                    <pre>
                        <code>
분수의 덧셈
문제 설명
첫 번째 분수의 분자와 분모를 뜻하는 numer1, denom1, 두 번째 분수의 분자와 분모를 뜻하는 
numer2, denom2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 
분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

제한사항
0 <numer1, denom1, numer2, denom2 < 1,000
입출력 예
numer1	denom1	numer2	denom2	result
1	2	3	4	[5, 4]
9	2	1	3	[29, 6]
입출력 예 설명
입출력 예 #1

1 / 2 + 3 / 4 = 5 / 4입니다. 따라서 [5, 4]를 return 합니다.
입출력 예 #2

9 / 2 + 1 / 3 = 29 / 6입니다. 따라서 [29, 6]을 return 합니다.

문제
class Solution {
    public int[] solution(int numer1, int denom1, int numer2, int denom2) {
        int[] answer = {};
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
    public int[] solution(int numer1, int denom1, int numer2, int denom2) {
        int[] answer = {};
        int denom = denom1*denom2;
        int numer = numer1*denom2+numer2*denom1;
        
        //나중에 맥스라는걸 쓸거니까 max 라는 애를 선언해 주는건가? 왜 여기서 선언해주는거지?
        
        int max = 1;
        
        for (int i = 1; i<=numer && i<=denom; i++){
          if(denom%i == 0 && numer%i ==0){
             max = i; 
          }  
        };
        numer = numer/max;
        denom = denom/max;


        
        answer = new int[2];
        answer[0] = numer;
        answer[1] = denom;
        
        
        System.out.println(denom);
        System.out.println(numer);
        
                //위에서 지정해주지 않고 int[] answer = {numer, denom}; 이렇게 해줘도 상관없다.
        
        return answer;
    }
}
                        </code>
                    </pre>
                    키포인트 : 최소공배수를 구하는것이 관건
                    <br>
                    1. 분모와 분자를 정해준다.
                    <br>
                    2. for문을 통해 나머지가 0이 되는것중에 최대를 구한다.
                    <br>
                    3. 분모가 클지 분모가 클지 모르기 때문에 조건을 추가해준다.
                    
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
		
		<h1 id="toggle97">9/7</h1>
    <table id="table97">
	 		<tr style="height: 10%">
	 			<th>유형</th>
	 			<td>문제</td>
	 			<td>정답</td>
	 		</tr>
	 		<tr>
	 			<th >직사각형 별찍기</th>
	 			<td>
                    <pre>
                        <code>
문제 설명
이 문제에는 표준 입력으로 두 개의 정수 n과 m이 주어집니다.
별(*) 문자를 이용해 가로의 길이가 n, 세로의 길이가 m인 직사각형 형태를 출력해보세요.

제한 조건
n과 m은 각각 1000 이하인 자연수입니다.
예시
입력

5 3
출력

*****
*****
*****
                        
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
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        
        StringBuilder sb = new StringBuilder();
        
        
        for(int i = 0; i < a; i++){
            sb.append('*');
            
        }
        String star = new String();
        
        for(int i = 0; i < b; i++){
            
            System.out.println(sb);
            
        }
 
    }
}
                        </code>
                        </pre>
                        
                        <pre>
                        <code>
다른예시

import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        
        final StringBuilder sb = new StringBuilder();
        
        for(int i = 0; i < a; i++) {
            sb.append("*");
        }
        
        String star = sb.toString();

        for(int i = 0; i < b; i++) {
            System.out.println(star);    
        }
        
    }
}
두 코드 모두 비슷한 기능을 수행하지만, 두 번째 코드가 약간 더 효율적이고 가독성이 높은 코드입니다. 
두 번째 코드에서는 몇 가지 개선 사항이 있습니다:
final 키워드: 두 번째 코드에서 sb 변수를 final StringBuilder로 선언했습니다.
 이렇게 하면 sb 변수를 재할당할 수 없으므로 코드의 안정성을 높일 수 있습니다.

sb.toString(): 두 번째 코드에서는 StringBuilder의 내용을 문자열로 변환할 때 sb.toString() 메서드를 사용했습니다. 
이렇게 하면 StringBuilder의 내용을 불필요하게 복제하지 않고도 문자열로 변환할 수 있으며, 문자열을 더 이상 변경하지 않을 때에도
 star 변수를 사용하여 문자열을 재사용할 수 있습니다.

가독성: 두 번째 코드는 변수명을 좀 더 의미있게 사용하고, 코드의 구조가 명확하게 나타나므로 가독성이 높습니다.

코드를 작성하는 스타일과 선호도는 개발자마다 다를 수 있으며, 
두 코드 모두 동작은 하지만 두 번째 코드가 일반적으로 더 권장되는 스타일과 더 효율적으로 작성되었다고 할 수 있습니다.
                     </code>
                        </pre>
                    해결방법 : for문을 이용해서 문자열을 뽑아내준다.
                   
                    
                    
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
    
    $("#toggle97").click(function() {
        $("#table97").toggle();
    });
    
});
</script>
</body>
