<%@ page contentType="text/html; charset=euc-kr"%>

<% 
	String message = "adfasdfasdf";
	if(request.getAttribute("message") != null && ((String)request.getAttribute("message")).length()>0)
	{
		message = (String)request.getAttribute("message");
	}
	
%>

<P>�۾��� ������</P>

<script type="text/javascript" src="./chat/socket.io/socket.io.js"></script>
<SCRIPT>
	$(function() {
		var socket = io("https://106.242.203.67:900");

		$('#writeBtn').click(function() {
			//var writeForm = $('#writeForm');
			$('#writeForm').submit();
			alert(<%=message%>);
		});
		
		$('#btn').click(function() {
			btnClick();
		}); 
		
		
		
		
	});
</SCRIPT>

<BODY>   
	<FORM name="writeForm" method="post" id="writeForm" enctype="multipart/form-data" action="/writeSave.listen">
		<P>�Ҹ� �Է���</P>
		<INPUT type="text" name="bbs_contents" id="bbs_contents">
		<P>���� �����</P>
		<INPUT type="file" name="upload"/>
		<INPUT type="button" id="writeBtn" value="���"/>
	</FORM>
	
		<input type="text" id="text" name="text" />
		
		
		
		<button id="btn">����</button><br><br>
</BODY>