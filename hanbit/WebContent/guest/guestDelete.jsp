 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제</title>
<style type="text/css">
	a{text-decoration: none; font-weight: bold; color: black;}
		a:hover{text-decoration: underline;color: blue;}
		.center{margin: 0 auto;width:1000px;}
		</style>
	<script>
		function numberCheck() {
			//charAt() , substring(), length
			
			var s_val = myform.sabun.value;
			for(var i=0;i<s_val.length;i++){
				if(s_val.charAt(i)<'0'||s_val.charAt(i)>'9'){
					alert("숫자만 입력하세요.");	
					myform.sabun.value = s_val.substring(0,i);	
					
					myform.sabun.focus();
					
				}
			}
			
			
		/*  위에 것을 간단하게 요약한 함수  isNaN == true 문자 , 숫자는 false
			if(isNaN(n)==true){
				alert("0~9까지 숫자만 입력하세요.");	
			}
		
		*/
			
		}
		function showInput() {
			alert(myform.sabun.value.substring(0,3));
		}
		function move(){
			
			var str = myform.sabun.value;
			var size = myform.sabun.value.length;
			if(str==""){
				alert("삭제할 사번을 입력하세요");
				myform.sabun.focus();
				return;
			}
			alert("click");
			if(size!=4){
				alert("4자리 숫자여야 합니다.");
				myform.sabun.focus();
				return;
			}
			document.myform.submit();
		}
	</script>
</head>
<body>
	<font size="7" color="blue">[guestDelete.jsp]</font><p>
			<form name="myform" action="guestDeleteSave.jsp" method="get">
				<b><font color="red">삭제할 사번</font> :</b>
				<input type="text" name="sabun" onKeyUp="numberCheck()" /> <!-- onKeyUp="numberCheck() -->
				<input type="button" onClick="move()" value="삭 제" />&nbsp;&nbsp;&nbsp;
			</form>
		<p>
		<h1>
			<a href="guest.jsp">입력</a>&nbsp;
			<a href="guestDelete.jsp">삭제</a>&nbsp;
			<a href="guestList.jsp">출력</a>&nbsp;
		</h1>
		<p><br><br><br><br></p>
		
</body>
</html>