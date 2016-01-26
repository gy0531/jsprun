<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<table width="100%" border="0" cellpadding="2" cellspacing="6">
	<tr>
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="guide">
				<tr>
					<td>
						<a href="#"
							onClick="parent.menu.location='admincp.jsp?action=menu'; parent.main.location='admincp.jsp?action=home';return false;">系统设置首页</a>&nbsp;&raquo;&nbsp;奇虎基本设置
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
									“奇虎搜索”(
									<a href="http://www.qihoo.com" target="_blank">http://www.qihoo.com</a>)是中国领先的社区搜索技术提供商，特别为
									JspRun!
									论坛系统提供了基于蜘蛛和全文检索技术的搜索服务，支持超大数据量的快速检索。由于搜索请求由奇虎提供结果，因而不占用服务器资源，适合各类论坛使用。
							</ul>
							<ul>
								<li>
									注意: 由于使用了蜘蛛技术，首次开启本功能后，可能需要几天时间用以建立您论坛的数据索引和提供搜索服务。
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<form method="post" name="settings"
				action="admincp.jsp?action=qihoo_relatedthreads">
				<input type="hidden" name="formhash" value="a83684ea">
				<a name="ddf7cb72a65aeb60"></a>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="tableborder">
					<tr class="header">
						<td colspan="2">
							显示相关主题数量:
							<a href="###" onclick="collapse_change('ddf7cb72a65aeb60')"><img
									id="menuimg_ddf7cb72a65aeb60"
									src="admin/admin.images/menu_reduce.gif" border="0"
									style="float: right; margin-top: -12px; margin-right: 8px;" />
							</a>
						</td>
					</tr>
					<tbody id="menu_ddf7cb72a65aeb60" style="display: yes">
						<tr>
							<td width="45%" class="altbg1">
								<b>显示相关主题数量:</b>
								<br />
								<span class="smalltxt">利用搜索技术可以实现智能匹配相关主题的功能，如果存在与当前浏览主题内容相关的其它主题，将在页面下方显示这些相关内容。默认值为
									3，建议在不超过 10 的范围内取值，0 为不显示相关主题并关闭此功能</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[bbsnum]" value="">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>是否显示站外相关主题:</b>
								<br />
								<span class="smalltxt">当站内相关主题数量少于您设置的数量时，将自动添加与当前浏览主题内容相关的站外主题予以补足</span>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio" name="settingsnew[webnum]"
									value="1">
								是 &nbsp; &nbsp;
								<input class="radio" type="radio" name="settingsnew[webnum]"
									value="0" checked>
								否
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>显示站外相关主题类型:</b>
								<br />
								<span class="smalltxt">站外相关主题类型，设置相应的类型将只显示对应类型的站外相关主题，类型包括博客文章、资讯、论坛帖子</span>
							</td>
							<td class="altbg2">
								<input class="checkbox" type="checkbox"
									name="settingsnew[type][blog]" value="blog">
								博客主题
								<br />
								<input class="checkbox" type="checkbox"
									name="settingsnew[type][news]" value="news">
								资讯主题
								<br />
								<input class="checkbox" type="checkbox"
									name="settingsnew[type][bbs]" value="bbs">
								论坛主题
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1" valign="top">
								<b>站外相关主题过滤地址:</b>
								<br />
								<span class="smalltxt">填写要过滤的站外相关主题的网站地址，过滤后如果出现改地址下的相关主题，系统将自动过滤。例如http://www.abc.com，每个域名一行，不支持通配符，留空则为不过滤</span>
							</td>
							<td class="altbg2">
								<img src="images/admincp/zoomin.gif"
									onmouseover="this.style.cursor='pointer'"
									onclick="zoomtextarea('settingsnew[banurl]', 1)">
								<img src="images/admincp/zoomout.gif"
									onmouseover="this.style.cursor='pointer'"
									onclick="zoomtextarea('settingsnew[banurl]', 0)">
								<br />
								<textarea rows="6" name="settingsnew[banurl]"
									id="settingsnew[banurl]" cols="50"></textarea>
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>显示相关主题位置</b>
								<br />
								<span class="smalltxt">设置奇虎相关主题显示位置，帖子页面上方显示在主题贴内容的下方，帖子页面下方显示在快速回复上方</span>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio" name="settingsnew[position]"
									value="0">
								在帖子页面上方
								<br />
								<input class="radio" type="radio" name="settingsnew[position]"
									value="1">
								在帖子页面下方
							</td>
						</tr>
					</tbody>
				</table>
				<br />
				<center>
					<input class="button" type="submit" name="qihoosubmit" value="提 交">
			</form>
		</td>
	</tr>
</table>
<br />
<br />
