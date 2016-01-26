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
				action="admincp.jsp?action=qihoo_config">
				<input type="hidden" name="formhash" value="a83684ea">
				<a name="49af3e30c0c4dc68"></a>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="tableborder">
					<tr class="header">
						<td colspan="2">
							奇虎全文搜索设置
							<a href="###" onclick="collapse_change('49af3e30c0c4dc68')"><img
									id="menuimg_49af3e30c0c4dc68"
									src="admin/admin.images/menu_reduce.gif" border="0"
									style="float: right; margin-top: -12px; margin-right: 8px;" />
							</a>
						</td>
					</tr>
					<tbody id="menu_49af3e30c0c4dc68" style="display: yes">
						<tr>
							<td width="45%" class="altbg1">
								<b>启用奇虎搜索:</b>
								<br />
								<span class="smalltxt">设置是否启用奇虎搜索功能，以下选项只有在启用本功能时才有效</span>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio" name="qihoonew[status]"
									value="1">
								启用奇虎搜索全部功能
								<br />
								<input class="radio" type="radio" name="qihoonew[status]"
									value="2">
								启用奇虎全文搜索基本功能
								<br />
								<input class="radio" type="radio" name="qihoonew[status]"
									value="0">
								不启用
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>显示论坛搜索框:</b>
								<br />
								<span class="smalltxt">设置在哪些页面显示搜索框，以方便用户进行搜索</span>
							</td>
							<td class="altbg2">
								<input class="checkbox" type="checkbox"
									name="qihoonew[searchbox][1]" value="1">
								在论坛首页显示
								<br />
								<input class="checkbox" type="checkbox"
									name="qihoonew[searchbox][2]" value="1">
								在主题列表页面显示
								<br />
								<input class="checkbox" type="checkbox"
									name="qihoonew[searchbox][3]" value="1">
								在主题内容页面显示
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>显示搜索结果摘要:</b>
								<br />
								<span class="smalltxt">设置是否在搜索结果中显示帖子内容摘要信息</span>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio" name="qihoonew[summary]"
									value="1">
								是 &nbsp; &nbsp;
								<input class="radio" type="radio" name="qihoonew[summary]"
									value="0" checked>
								否
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>允许抓取干扰码帖子:</b>
								<br />
								<span class="smalltxt">是否允许奇虎蜘蛛抓取带干扰码的帖子</span>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio" name="qihoonew[jammer]"
									value="1">
								是 &nbsp; &nbsp;
								<input class="radio" type="radio" name="qihoonew[jammer]"
									value="0" checked>
								否
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>用户自定义专题数量:</b>
								<br />
								<span class="smalltxt">用户可以自行将感兴趣的关键字设置为自定义专题，在搜索结果页右上方点击“将
									xxx 快速加入我的专题”即可。默认值为 5，建议在不超过10的范围内取值，0 为不允许自定义专题</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="qihoonew[maxtopics]" value="">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1" valign="top">
								<b>推荐搜索关键词:</b>
								<br />
								<span class="smalltxt">设置在首页显示的推荐搜索关键词，每个关键词一行，用户可以直接点击以进行搜索</span>
							</td>
							<td class="altbg2">
								<img src="images/admincp/zoomin.gif"
									onmouseover="this.style.cursor='pointer'"
									onclick="zoomtextarea('qihoonew[keywords]', 1)">
								<img src="images/admincp/zoomout.gif"
									onmouseover="this.style.cursor='pointer'"
									onclick="zoomtextarea('qihoonew[keywords]', 0)">
								<br />
								<textarea rows="6" name="qihoonew[keywords]"
									id="qihoonew[keywords]" cols="50"></textarea>
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>站长联系 Email:</b>
								<br />
								<span class="smalltxt">如果是你第一次开通奇虎搜索功能，请务必填写正确的邮箱地址，以便收到奇虎搜索服务的开通信息</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="qihoonew[adminemail]"
									value="">
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
