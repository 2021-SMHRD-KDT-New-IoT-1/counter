<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%
		MemberVO vo = (MemberVO) session.getAttribute("member");
	%>


	<form action="Login">
		<div class="u-custom-menu u-nav-container">
			<ul class="u-nav u-unstyled u-nav-1">

				<%
					if (vo == null) {
				%>


				<li class="u-nav-item">ID<input type="text" name="id"
					placeholder="id�� �Է��ϼ���">PW<input type="password" name="pw"
					placeholder="pw�� �Է��ϼ���"><input type="submit" value="�α���"></li><br>
				<li class="u-nav-item"><a
					class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="join.html" style="padding: 10px 32px;">ȸ������</a></li><br>
				<%
					} else {
				%>

				<%
					if (vo.getId().equals("admin")) {
				%>
				<li class="u-nav-item"><a
					class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="Logout" style="padding: 10px 32px;">��ü ȸ������ ����</a></li>
				<%
					}
				%>


				<li><%=vo.getId()%>�� ȯ���մϴ�.</li>
				<li class="u-nav-item"><a
					class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="Logout" style="padding: 10px 32px;">�α׾ƿ�</a></li>
				<li class="u-nav-item"><a
					class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="Update.jsp" style="padding: 10px 32px;">ȸ������ ����</a></li>


				<%
					}
				%>
				<li class="u-nav-item"><a
					class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="Home.html" style="padding: 10px 32px;">Home</a></li><br>
				<li class="u-nav-item"><a
					class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base"
					href="About.html" style="padding: 10px 32px;">About</a></li>

			</ul>
		</div>
	</form>



</body>
</html>