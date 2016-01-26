<%@ page language="java" pageEncoding="UTF-8"%>
<jsp:include page="cp_header.jsp" />
<br />
<br />
<br />
<br />
<br />
<br />
<table width="500" border="0" cellpadding="0" cellspacing="0" align="center" class="tableborder">
	<tr class="header">
		<td>Jsprun! 提示</td>
	</tr>
	<tr>
		<td class="altbg2">
			<div align="center">
				<br />
				<br />
				<br />
				${errorInfo}
				<br />
				<br />
				<br />
				<a href="javascript:history.go(-1);" class="mediumtxt">[ 点击这里返回上一页 ]</a>
				<br />
				<br />
			</div>
			<br />
			<br />
		</td>
	</tr>
</table>
<br />
<br />
<br />
<jsp:include page="cp_footer.jsp" />