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
		<td>JspRun! 提示</td>
	</tr>
	<tr>
		<td class="altbg2">
			<div align="center">
				<form method="post" action="${commitPath}">
					<input type="hidden" name="hasconfirmed" value="yes" />
					<br />
					<br />
					<br />
					${confirmInfo}
					<br />
					${otherInfo!=null?otherInfo:""}
					<br />
					<br />
					<br />
					<input class="button" type="submit" name="confirmed" value=" 确 定 ">&nbsp;
					<input class="button" type="button" value=" 取 消 " onClick="history.go(-1);">
				</form>
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