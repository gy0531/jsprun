<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<table width="100%" border="0" cellpadding="2" cellspacing="6">
	<tr>
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="guide">
				<tr>
					<td>
						<a href="#"
							onClick="parent.menu.location='admincp.jsp?action=menu'; parent.main.location='admincp.jsp?action=home';return false;">系统设置首页</a>&nbsp;&raquo;&nbsp;参数设置
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
							<ul>
								<li>
									视频功能是由 CC 视频联盟和 56.com 联合提供。您上传和播放视频所需的存储及带宽由 CC 视频联盟和 56.com
									联合提供，因而不占用您的任何存储空间。CC 视频联盟与 56.com 作为 JspRun!
									核心合作伙伴，共同助力社区网站视频分享，为中国互联网企业及中小网站提供优秀的视频解决方案。
								</li>
								<li>
									了解详情与修改账户信息，请登录
									<a href="http://union.bokecc.com" target="_blank">http://union.bokecc.com</a>；使用问题交流，请访问
									<a href="http://bbs.bokecc.com/forumdisplay.jsp?fid=45"
										target="_blank">http://bbs.bokecc.com/forumdisplay.jsp?fid=45</a>
								</li>
								<li>
									基本信息部分请在第一次使用时认真填写，如没有特殊需要第一次提交后请勿修改。
								</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<form method="post" name="settings"
				action="admincp.jsp?action=videoconfig">
				<input type="hidden" name="formhash" value="a83684ea">
				<a name="81412c59e51546cc"></a>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="tableborder">
					<tr class="header">
						<td colspan="2">
							参数设置
							<a href="###" onclick="collapse_change('81412c59e51546cc')"><img
									id="menuimg_81412c59e51546cc"
									src="admin/admin.images/menu_reduce.gif" border="0"
									style="float: right; margin-top: -12px; margin-right: 8px;" />
							</a>
						</td>
					</tr>
					<tbody id="menu_81412c59e51546cc" style="display: yes">
						<tr>
							<td width="45%" class="altbg1">
								<b>是否开启视频功能:</b>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio" name="settingsnew[open]"
									value="1">
								是 &nbsp; &nbsp;
								<input class="radio" type="radio" name="settingsnew[open]"
									value="0" checked>
								否
							</td>
						</tr>
				</table>
				<br />
				<a name="d73dc9bf5dd8e09c"></a>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="tableborder">
					<tr class="header">
						<td colspan="2">
							基本信息
							<a href="###" onclick="collapse_change('d73dc9bf5dd8e09c')"><img
									id="menuimg_d73dc9bf5dd8e09c"
									src="admin/admin.images/menu_reduce.gif" border="0"
									style="float: right; margin-top: -12px; margin-right: 8px;" />
							</a>
						</td>
					</tr>
					<tbody id="menu_d73dc9bf5dd8e09c" style="display: yes">
						<tr>
							<td width="45%" class="altbg1">
								<b>论坛名称（必填）:</b>
								<br />
								<span class="smalltxt">论坛名称，填写后可以修改</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[bbname]"
									value="《球迷之家》">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>论坛地址（必填）:</b>
								<br />
								<span class="smalltxt">论坛地址，一旦修改无特殊需要请勿修改</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[url]"
									value="http://localhost/">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>联系邮件（必填）:</b>
								<br />
								<span class="smalltxt">邮件地址为视频功能上传帐号，一旦填写请勿修改，否则会造成视频播放失效</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[email]" value="">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>站点LOGO:</b>
								<br />
								<span class="smalltxt">放置在视频播放器上的logo，支持格式jpg、png</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[logo]" value="">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>站点类型（必填）:</b>
								<br />
								<span class="smalltxt">站点类型，填写后可以修改</span>
							</td>
							<td class="altbg2">
								<input type="radio" class="radio" name="settingsnew[type]"
									value="1">
								&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					</tbody>
				</table>
				<br />
				<center>
					<input class="button" type="submit" name="configsubmit" value="提 交">
			</form>
		</td>
	</tr>
</table>
<br />
<br />
