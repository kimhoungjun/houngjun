<%@ page contentType="text/html; charset=euc-kr"%>
<HTML>
	<HEAD>
		<TITLE>������ ���������� �͸�SNS - Listen</TITLE>
		<META http-equiv="Content-Type" content="text/html; charset=euc-kr">
		<SCRIPT type="text/javascript">
			 var filter = "win16|win32|win64|mac";
	
			 if( navigator.platform  )
			 {
			 	if( filter.indexOf(navigator.platform.toLowerCase())<0 )
			 	{
			   		alert("����� ��⿡�� ����");
			   		// �Ʒ� �ּҷ� �̵��Ѵ�.
			   		//location.href = "http://m.daum.net/";
			  	}else{
			   		//alert("PC���� ����");
			   		location.href = "/Login.listen";
			  	}
			}
		</SCRIPT>
	</HEAD>
		<BODY>
		</BODY>
</HTML>
