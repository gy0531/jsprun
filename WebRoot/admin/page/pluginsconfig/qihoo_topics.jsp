<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<table width="100%" border="0" cellpadding="2" cellspacing="6">
	<tr>
		<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide">
			<tr>
				<td>
				<a href="#" onClick="parent.menu.location='admincp.jsp?action=menu'; parent.main.location='admincp.jsp?action=home';return false;">系统设置首页</a>
				&nbsp;&raquo;&nbsp;奇虎专题设置</td></tr>
		</table>
		<br />
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
			<tr class="header">
				<td>
				<div style="float:left; margin-left:0px; padding-top:8px">
					<a href="###" onclick="collapse_change('tip')">技巧提示</a>
				</div>
				<div style="float:right; margin-right:4px; padding-bottom:9px">
					<a href="###" onclick="collapse_change('tip')">
					<img id="menuimg_tip" src="admin/admin.images/menu_reduce.gif" border="0" />
					</a>
				</div></td></tr>
			<tbody id="menu_tip" style="display:">
				<tr>
					<td>
					<ul>
						<li>专题是由奇虎搜索引擎根据特定条件，对本论坛帖子进行自动汇集整理而形成的一种主题索引方式，专题链接显示于首页，您可以在此进行论坛推荐专题的设置。</ul>
					<ul>
						<li>各项参数说明：
							<ul>
								<li>专题名称：显示在首页，只做显示用，不参与搜索；
								<li>相关关键词：与专题相关的关键词，可用空格或 "AND" 或 "OR" 连接，用以匹配多个关键字全部或者其中部分；
								<li>帖子内容长度：设置专题匹配中帖子的长度的限制，单位为字节，0 为不限制；
								<li>关键词匹配：设置关键词按标题或按全文匹配；
								<li>帖子排序：设置专题结果页面的排序方式。</ul></ul>
					<ul>
						<li>此功能由奇虎(
							<a href="http://www.qihoo.com" target="_blank");">http://www.qihoo.com</a>)提供。	</ul></td></tr>
			</tbody>
		</table>
		<br />
		<form method="post" action="admincp.jsp?action=qihoo_topics">
			<input type="hidden" name="formhash" value="a83684ea">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
				<tr class="header">
					<td>
						<input class="checkbox" type="checkbox" name="chkall" class="header" onclick="checkall(this.form)">
						删?</td>
					<td>专题名称</td>
					<td>相关关键词</td>
					<td>帖子内容长度大于</td>
					<td>匹配方式</td>
					<td>排序方式</td>
					<td>预览</td></tr>
				<tr class="altbg1" align="center">
					<td>新增:</td>
					<td><input type="text" size="20" name="newtopic" id="newtopic"></td>
					<td><input type="text" size="30" name="newkeyword" id="newkeyword"></td>
					<td><input type="text" size="10" name="newlength" id="newlength" value="0"></td>
					<td>
						<select name="newstype" id="newstype">
							<option value="0" selected>全文</option>
							<option value="1">标题</option></select></td>
					<td>
						<select name="newrelate" id="newrelate">
							<option value="score">相关度</option>
							<option value="pdate">发贴时间</option>
							<option value="rdate">回复时间</option></select></td>
					<td>
						<a href="###" onClick="window.open('topic.jsp?topic='+$('newtopic').value+'&keyword='+$('newkeyword').value+'&stype='+$('newstype').value+'&length='+$('newlength').value+'&relate='+$('newrelate').value+'');">[预览]</a>
					</td></tr>
			</table>
			<br />
			<center>
				<input class="button" type="submit" name="topicsubmit" value="提 交">
			</center>
		</form>
		</td>
	</tr>
	</td>
	</tr>
</table>
<br />
<br />
