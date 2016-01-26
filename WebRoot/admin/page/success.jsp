<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
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
				${successInfo}
				<br />
				<br />
				<br />
				<c:choose>
					<c:when test="${'f'!= redirectFlag }">
						<a href="${requestPath}">如果您的浏览器没有自动跳转，请点击这里</a>
						<script>setTimeout("redirect('${requestPath}');", 2000);</script>
					</c:when>
					<c:otherwise>${otherInfo}</c:otherwise>
				</c:choose>
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