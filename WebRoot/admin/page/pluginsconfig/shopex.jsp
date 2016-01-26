<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<table width="100%" border="0" cellpadding="2" cellspacing="6">
	<tr>
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
				class="guide">
				<tr>
					<td>
						<a href="#"
							onClick="parent.menu.location='admincp.jsp?action=menu'; parent.main.location='admincp.jsp?action=home';return false;">系统设置首页</a>&nbsp;&raquo;&nbsp;ShopEx
						设置
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
									ShopEx 是一个通用型网上商城系统，ShopEx 4.4 及以上版本可以实现与当前版本JspRun! 的关联整合。
							</ul>
							<ul>
								<li>
									请特别注意：由于业务调整，在新版 JspRun! 中将不再内置提供与 ShopEx 的整合接口，相关功能将由 JspRun
									公司网上商城产品 ECShop 所替代，望各位用户周知。
									<br />
									相关事项请关注 JspRun! 官方社区
									<a href="http://www.JspRun.net" target="_blank">http://www.JspRun.net</a>、ECShop
									官方网站
									<a href="http://www.ecshop.com" target="_blank">http://www.ecshop.com</a>
									及 ShopEx 官方网站为
									<a href="http://www.shopex.cn" target="_blank">www.shopex.cn</a>。
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			<br />
			<form method="post" name="settings" action="admincp.jsp">
				<input type="hidden" name="action" value="shopex">
				<input type="hidden" name="formhash" value="a83684ea">
				<a name="5ca4b54438047cae"></a>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="tableborder">
					<tr class="header">
						<td colspan="2">
							通行证设置
							<a href="###" onclick="collapse_change('5ca4b54438047cae')"><img
									id="menuimg_5ca4b54438047cae"
									src="admin/admin.images/menu_reduce.gif" border="0"
									style="float: right; margin-top: -12px; margin-right: 8px;" />
							</a>
						</td>
					</tr>
					<tbody id="menu_5ca4b54438047cae" style="display: yes">
						<tr>
							<td width="45%" class="altbg1">
								<b>启用通行证:</b>
								<br />
								<span class="smalltxt">请在确实需要时，根据实际情况开启通行证的各项功能。注意: 开启会替换
									JspRun! 自身的注册与登录功能，因此使用前请务必仔细阅读 JspRun!《用户使用说明书》关于 JspRun!
									Passport 的部分，并仅在确定确实需要此特性的时候开启</span>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio"
									name="settingsnew[passport_status]" value="1"
									onclick="$('hidden_passport_status').style.display = '';">
								是 &nbsp; &nbsp;
								<input class="radio" type="radio"
									name="settingsnew[passport_status]" value="0" checked
									onclick="$('hidden_passport_status').style.display = 'none';">
								否
							</td>
						</tr>
					</tbody>
					<tbody class="sub" id="hidden_passport_status"
						style="display: none">
						<tr>
							<td width="45%" class="altbg1">
								<b>ShopEx 同步</b>
								<br />
								<span class="smalltxt">选择“是”，论坛用户的登录状态和用户信息会主动与 ShopEx
									进行同步；选择“否”，论坛将等待 ShopEx 提供的登录状态和用户信息</span>
							</td>
							<td class="altbg2">
								<input class="radio" type="radio"
									name="settingsnew[passport_shopex]" value="1">
								是 &nbsp; &nbsp;
								<input class="radio" type="radio"
									name="settingsnew[passport_shopex]" value="0" checked>
								否
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>应用程序 URL 地址:</b>
								<br />
								<span class="smalltxt">请填写通过 Passport 与 JspRun! 整合的应用程序的
									URL 地址，请勿遗漏最后的“/”，例如 http://www.test.com/</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[passport_url]"
									value="">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>通行证私有密匙:</b>
								<br />
								<span class="smalltxt">私有密匙用于在应用程序和 JspRun!
									之间传输信息的加密，可包含任何字母及数字，长度大于 10 字节，请在应用程序与 Passport
									通信的部分设置完全相同的私有密匙，以确保两套系统能够正常通信</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[passport_key]"
									value="">
							</td>
						</tr>
						<tr>
							<td width="45%" class="altbg1">
								<b>验证字串有效期(秒):</b>
								<br />
								<span class="smalltxt">设置应用程序发送过来的用户验证字串的有效期，超过此有效期验证字串将失效。建议设置为
									3600，既可保证安全又可避免因不同服务器间时间差而产生无法登录的问题</span>
							</td>
							<td class="altbg2">
								<input type="text" size="50" name="settingsnew[passport_expire]"
									value="3600">
							</td>
						</tr>
						<input type="hidden" name="settingsnew[passport_register_url]"
							value="index.jsp?gOo=cmVnaXN0ZXJfMS5kd3Q=">
						<input type="hidden" name="settingsnew[passport_login_url]"
							value="index.jsp?gOo=bG9naW4uZHd0">
						<input type="hidden" name="settingsnew[passport_logout_url]"
							value="index.jsp?gOo=bG9nb3V0X2FjdC5kbw==">
						<tr>
							<td width="45%" class="altbg1">
								<b>积分同步选项:</b>
								<br />
								<span class="smalltxt">用户在登录时可以把用户在应用程序中的积分单向同步到 JspRun!
									的某一项积分中，请设置允许 Passport 同步的论坛目标积分</span>
							</td>
							<td class="altbg2">
								<select name="settingsnew[passport_extcredits]">
									<option value="0" selected>
										不同步积分
									</option>
									<option value="1">
										extcredits1 (威望)
									</option>
									<option value="2">
										extcredits2 (金钱)
									</option>
									<option value="3">
										extcredits3
									</option>
									<option value="4">
										extcredits4
									</option>
									<option value="5">
										extcredits5
									</option>
									<option value="6">
										extcredits6
									</option>
									<option value="7">
										extcredits7
									</option>
									<option value="8">
										extcredits8
									</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
				<br />
				<center>
					<input class="button" type="submit" name="ppsubmit" value="提 交">
				</center>
			</form>
		</td>
	</tr>
</table>
<br />
<br />
