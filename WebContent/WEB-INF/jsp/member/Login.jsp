<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page language="java"%>

<HTML>
<HEAD>
<TITLE>Login</TITLE>

<%
	if (session.getAttribute("Error") == "N") {
%>
<SCRIPT>
	window.alert("�߸��� �����Դϴ�.");
</SCRIPT>
<%
	}
%>
<SCRIPT type="text/javascript" src="http://maps.google.com/maps/api/js-sensor=true"></SCRIPT>
<SCRIPT type="text/javascript" src="js/geolocation.js" charset="euc-kr"></SCRIPT>
<SCRIPT language="JavaScript">
	function loginAction() {
		var f = document.form;
		var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

		if (f.id.value == "") {
			window.alert("ID(email)�� �ݵ�� �Է��ؾ� �մϴ�.");
			f.id.focus();
			return false;
		}
		if (regex.test(f.id.value) === false) {
			alert("��ȿ�� �̸��� ������ �ƴմϴ�");
			return false;
		}
		f.submit();
	}
	function join() {
		location.href = "/join.listen";
	}
	function logoutAction() {
		window.alert("�α׾ƿ� �Ǿ����ϴ�");
		location.href = "/Logout.listen";
	}
</SCRIPT>
</HEAD>

<BODY>
	<CENTER>
		<FONT size="4" color="blue"><B>�α���</B></FONT><BR>
		<HR>
		<%
			System.out.println("login.jsp�α���");
			if (session.getAttribute("LoginYn") != null
					&& ((String) session.getAttribute("LoginYn")).length() > 0
					&& ((String) session.getAttribute("LoginYn")).equals("Y")) {
				String email = (String) session.getAttribute("email");
		%>
		<TABLE border=0>
			<TR>
				<TD>�ݰ����ϴ�. <%=email%> ��! <BR> �����Ϸ� �Ǽ���~~!
				</TD>
			</TR>
			<TR>
				<TD align="center"><INPUT type="button" value="Logout"
					onclick="logoutAction();" style="cursor: hand"></TD>
			</TR>
		</TABLE>
		<%
			} else {
		%>
		<TABLE border=0>
			<FORM name="form" action="loginAction.listen" method="post">
				<TR>
					<TD>User ID(E-mail) :</td>
					<td><input type="text" name="id"></TD>
				</TR>
				<TR>
					<TD>Password :</TD>
					<td><input type="password" name="pass"></td>
				</TR>
				<TR>
					<TD colspan="2" align="center"><INPUT type="button"
						value="Login" onclick="loginAction();"> <INPUT
						type="reset" value="Reset"> <INPUT type="button"
						value="ȸ������" onclick="join();"></TD>
				</TR>
			</FORM>
		</TABLE>
		<%
			}
		%>
		<HR>
	</CENTER>
</BODY>
</HTML>
