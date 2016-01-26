<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<table width="100%" border="0" cellpadding="2" cellspacing="6">
	<tr>
		<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="guide">
			<tr>
				<td>
					<a href="#"
						onClick="parent.menu.location='admincp.jsp?action=menu'; parent.main.location='admincp.jsp?action=home';return false;">系统设置首页</a>&nbsp;&raquo;&nbsp;绑定视频帐户
				</td>
			</tr>
		</table>
		<br />
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="tableborder">
			<tr class="header">
				<td>
					<div style="float:left; margin-left:0px; padding-top:8px">
						<a href="###" onclick="collapse_change('tip')">技巧提示</a>
					</div>
					<div style="float:right; margin-right:4px; padding-bottom:9px">
						<a href="###" onclick="collapse_change('tip')"><img
								id="menuimg_tip" src="admin/admin.images/menu_reduce.gif"
								border="0" />
						</a>
					</div>
				</td>
			</tr>
			<tbody id="menu_tip" style="display:">
				<tr>
					<td>
						<li>
							如果您曾经是 CC 的用户，填下以下表单，绑定以前的帐号。
						</li>
						<li>
							CC 联盟登陆地址：
							<a href="http://union.bokecc.com" target="_blank">http://union.bokecc.com</a>
						</li>
						<li>
							询问问题：
							<a href="http://bbs.bokecc.com/forumdisplay.jsp?fid=45"
								target="_blank">http://bbs.bokecc.com/forumdisplay.jsp?fid=45</a>
						</li>
					</td>
				</tr>
			</tbody>
		</table>
		<br />
		<form method="post" name="settings"
			action="admincp.jsp?action=videobind">
			<input type="hidden" name="formhash" value="a83684ea">
			<a name="71eda8eb54613ed4"></a>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="tableborder">
				<tr class="header">
					<td colspan="2">
						绑定已经在 CC 注册过的帐号
						<a href="###" onclick="collapse_change('71eda8eb54613ed4')"><img
								id="menuimg_71eda8eb54613ed4"
								src="admin/admin.images/menu_reduce.gif" border="0"
								style="float: right; margin-top: -12px; margin-right: 8px;" />
						</a>
					</td>
				</tr>
				<tbody id="menu_71eda8eb54613ed4" style="display: yes">
					<tr>
						<td width="45%" class="altbg1">
							<b>Email:</b>
							<br />
							<span class="smalltxt">在 CC 注册的 email</span>
						</td>
						<td class="altbg2">
							<input type="text" size="50" name="settingsnew[vemail]" value="">
						</td>
					</tr>
					<tr>
						<td width="45%" class="altbg1">
							<b>密码:</b>
							<br />
							<span class="smalltxt">在 CC 注册的密码</span>
						</td>
						<td class="altbg2">
							<input type="text" size="50" name="settingsnew[vpassword]"
								value="">
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<center>
				<input class="button" type="submit" name="bindsubmit" value="提 交">
			</form>
		</td>
	</tr>
</table>
<br />
<br />
