<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<jsp:include flush="true" page="header.jsp" />
<script src="include/javascript/viewthread.js" type="text/javascript"></script>
<script type="text/javascript">zoomstatus = parseInt(1);</script>

<div id="foruminfo">
	<div id="nav">
		<a href="${settings.indexname}"> ${settings.bbname} </a> &raquo; <a href="forumdisplay.jsp?fid=4&amp;page=1">新版块名称</a> &raquo; cxzC
	</div>
	<div id="headsearch">
	</div>
</div>

<div id="ad_text"></div>


<div class="pages_btns">
	<div class="threadflow">
		<a href="redirect.jsp?fid=4&amp;tid=4&amp;goto=nextoldset">
			&lsaquo;&lsaquo; 上一主题</a> |
		<a href="redirect.jsp?fid=4&amp;tid=4&amp;goto=nextnewset">下一主题
			&rsaquo;&rsaquo;</a>
	</div>
	<span class="postbtn" id="newspecial"
		onmouseover="$('newspecial').id = 'newspecialtmp';this.id = 'newspecial';showMenu(this.id)"><a
		href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1"><img
				src="${styles.IMGDIR}/newtopic.gif" border="0" alt="发新话题" title="发新话题" />
	</a> </span>
	<span class="replybtn"><a
		href="post.jsp?action=reply&amp;fid=4&amp;tid=4&amp;extra=page%3D1"><img
				src="${styles.IMGDIR}/reply.gif" border="0" alt="" /> </a> </span>
</div>

<ul class="popupmenu_popup newspecialmenu" id="newspecial_menu"
	style="display: none">
	<li>
		<a href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1">发新话题</a>
	</li>
	<li class="poll">
		<a
			href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1&amp;special=1">发布投票</a>
	</li>
	<li class="trade">
		<a
			href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1&amp;special=2">发布商品</a>
	</li>
	<li class="reward">
		<a
			href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1&amp;special=3">发布悬赏</a>
	</li>
	<li class="activity">
		<a
			href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1&amp;special=4">发布活动</a>
	</li>
	<li class="debate">
		<a
			href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1&amp;special=5">发布辩论</a>
	</li>
</ul>

<form method="post" name="modactions">
	<input type="hidden" name="formhash" value="b29e1c42" />
	<div class="mainbox viewthread">
		<span class="headactions"> <a
			href="misc.jsp?action=blog&amp;tid=4" id="ajax_blog"
			onclick="ajaxmenu(event, this.id, 2000, 'changestatus', 0)">加入文集</a>
			<script type="text/javascript">
					function changestatus(obj) {
						obj.innerHTML = obj.innerHTML == '从文集移除' ? '加入文集' : '从文集移除';
					}
				</script> <a href="my.jsp?item=favorites&amp;tid=4" id="ajax_favorite"
			onclick="ajaxmenu(event, this.id, 3000, 0)">收藏</a> <a
			href="my.jsp?item=subscriptions&amp;subadd=4" id="ajax_subscription"
			onclick="ajaxmenu(event, this.id, 3000, null, 0)">订阅</a> <a
			href="misc.jsp?action=emailfriend&amp;tid=4" id="emailfriend"
			onclick="ajaxmenu(event, this.id, 9000000, null, 0)">推荐</a> <a
			href="viewthread.jsp?action=printable&amp;tid=4" target="_blank"
			class="notabs">打印</a> </span>
		<h1>
			cxzC
		</h1>
		<table id="pid4" summary="pid4" cellspacing="0" cellpadding="0">
			<tr>
				<td class="postauthor">
					<a name="lastpost"></a>
					<cite> <label>
							<a
								href="topicadmin.jsp?action=getip&amp;fid=4&amp;tid=4&amp;pid=4"
								id="ajax_getip_0"
								onclick="ajaxmenu(event, this.id, 10000, null, 0)" title="查看 IP">IP</a>
						</label> <a href="space.jsp?uid=1" target="_blank" id="userinfo4"
						class="dropmenu" onmouseover="showMenu(this.id)">admin</a> </cite>
					<div class="avatar">
						<img class="avatar" src="images/avatars/noavatar.gif" alt="" />
					</div>
					<p>
						<em>管理员</em>
					</p>
					<p>
						<img src="${styles.IMGDIR}/star_level3.gif" alt="Rank: 9" />
						<img src="${styles.IMGDIR}/star_level3.gif" alt="Rank: 9" />
						<img src="${styles.IMGDIR}/star_level1.gif" alt="Rank: 9" />
					</p>
					<p class="customstatus">
						4444
					</p>
					<ul>
						<li class="space">
							<a href="space.jsp?uid=1" target="_blank" title="admin的个人空间">
								个人空间</a>
						</li>
						<li class="pm">
							<a href="pm.jsp?action=send&amp;uid=1" target="_blank"
								id="ajax_uid_4"
								onclick="ajaxmenu(event, this.id, 9000000, null, 0)">发短消息</a>
						</li>
						<li class="buddy">
							<a
								href="my.jsp?item=buddylist&amp;newbuddyid=1&amp;buddysubmit=yes"
								target="_blank" id="ajax_buddy_0"
								onclick="ajaxmenu(event, this.id, null, 0)">加为好友</a>
						</li>

						<li class="online">
							当前在线
						</li>

					</ul>
				</td>
				<td class="postcontent"
					ondblclick="ajaxget('modcp.jsp?action=editmessage&pid=4&tid=4', 'postmessage_4')">
					<div class="postinfo">
						<strong title="复制帖子链接到剪贴板" id="postnum_4"
							onclick="setcopy('http://localhost/upload/viewthread.jsp?tid=4&amp;page=1#pid4', '帖子链接已经复制到剪贴板')">1<sup>
								#
							</sup> </strong>
						<em onclick="$('postmessage_4').className='t_bigfont'">大</em>
						<em onclick="$('postmessage_4').className='t_msgfont'">中</em>
						<em onclick="$('postmessage_4').className='t_smallfont'">小</em>
						发表于 2008-5-22 09:48&nbsp;
						<a href="viewthread.jsp?tid=4&amp;page=1&amp;authorid=1">只看该作者</a>
					</div>
					<div id="ad_thread2_0"></div>
					<div class="postmessage defaultpost">
						<div id="ad_thread3_0"></div>
						<div id="ad_thread4_0"></div>
						<h2>
							cxzC
						</h2>


						<div id="postmessage_4" class="t_msgfont">
							XZCXZcxzc
						</div>




					</div>
					<div class="signatures" style="maxHeightIE: 100px;">
						afsdfasdff撒 撒旦法sc231
					</div>
				</td>
			</tr>
			<tr>
				<td class="postauthor">
					<div class="popupmenu_popup userinfopanel" id="userinfo4_menu"
						style="display: none;">
						<div class="imicons">
							<a href="http://wpa.qq.com/msgrd?V=1&amp;Uin=QQ:&amp;Site=JspRun!&amp;Menu=yes" target="_blank"><img src="${styles.IMGDIR}/qq.gif" alt="QQ" /></a>
							<a href="http://wwp.icq.com/scripts/search.dll?to=ICQ:" target="_blank"><img src="${styles.IMGDIR}/icq.gif" alt="ICQ" /></a>
						</div>
						<dl>
							<dt>
								UID
							</dt>
							<dd>
								1&nbsp;
							</dd>
							<dt>
								帖子
							</dt>
							<dd>
								11&nbsp;
							</dd>
							<dt>
								精华
							</dt>
							<dd>
								<a href="digest.jsp?authorid=1">1</a>&nbsp;
							</dd>
							<dt>
								积分
							</dt>
							<dd>
								50&nbsp;
							</dd>
							<dt>
								阅读权限
							</dt>
							<dd>
								200&nbsp;
							</dd>
							<dt>
								来自
							</dt>
							<dd>
								来自:&nbsp;
							</dd>
							<dt>
								在线时间
							</dt>
							<dd>
								11 小时&nbsp;
							</dd>
							<dt>
								注册时间
							</dt>
							<dd>
								2008-5-20&nbsp;
							</dd>
							<dt>
								最后登录
							</dt>
							<dd>
								2008-5-22&nbsp;
							</dd>
						</dl>
						<p>
							<a href="主页:" target="_blank">查看个人网站</a>
						</p>
						<p>
							<a href="space.jsp?action=viewpro&amp;uid=1" target="_blank">查看详细资料</a>
						</p>
						<p>
							<a
								href="admincp.jsp?action=members&amp;username=admin&amp;searchsubmit=yes&amp;frames=yes"
								target="_blank">编辑用户</a>
						</p>
						<p>
							<a
								href="admincp.jsp?action=banmember&amp;uid=1&amp;membersubmit=yes&amp;frames=yes"
								target="_blank">禁止用户</a>
						</p>
					</div>
				</td>
				<td class="postcontent">
					<div class="postactions" style="height: 100%">
						<input type="checkbox" name="topiclist[]" value="4" />
						<p>
							<a
								href="post.jsp?action=edit&amp;fid=4&amp;tid=4&amp;pid=4&amp;page=1&amp;extra=page%3D1">编辑</a>
							<a
								href="post.jsp?action=reply&amp;fid=4&amp;tid=4&amp;repquote=4&amp;extra=page%3D1&amp;page=1">引用</a>
							<a href="magic.jsp?action=user&amp;pid=4" target="_blank">使用道具</a>
							<a
								href="misc.jsp?action=report&amp;fid=4&amp;tid=4&amp;pid=4&amp;page=1"
								id="ajax_report_4"
								onclick="ajaxmenu(event, this.id, 9000000, null, 0)">报告</a>
							<a href="misc.jsp?action=rate&amp;tid=4&amp;pid=4&amp;page=1"
								id="ajax_rate_4"
								onclick="ajaxmenu(event, this.id, 9000000, null, 0)">评分</a>
							<a href="###" onclick="fastreply('回复 # 的帖子', 'postnum_4')">回复</a>
							<strong onclick="scroll(0,0)" title="顶部">TOP</strong>
						</p>
						<div id="ad_thread1_0"></div>
					</div>
				</td>
			</tr>
		</table>
	</div>
</form>

<div class="pages_btns">
	<div class="threadflow">
		<a href="redirect.jsp?fid=4&amp;tid=4&amp;goto=nextoldset">
			&lsaquo;&lsaquo; 上一主题</a> |
		<a href="redirect.jsp?fid=4&amp;tid=4&amp;goto=nextnewset">下一主题
			&rsaquo;&rsaquo;</a>
	</div>
	<span class="postbtn" id="newspecialtmp"
		onmouseover="$('newspecial').id = 'newspecialtmp';this.id = 'newspecial';showMenu(this.id)"><a
		href="post.jsp?action=newthread&amp;fid=4&amp;extra=page%3D1"><img
				src="${styles.IMGDIR}/newtopic.gif" border="0" alt="发新话题" title="发新话题" />
	</a> </span>
	<span class="replybtn"><a
		href="post.jsp?action=reply&amp;fid=4&amp;tid=4&amp;extra=page%3D1"><img
				src="${styles.IMGDIR}/reply.gif" border="0" alt="" /> </a> </span>
</div>

<script src="include/javascript/post.js" type="text/javascript"></script>
<script type="text/javascript">
	var postminchars = parseInt('10');
	var postmaxchars = parseInt('10000');
	var disablepostctrl = parseInt('1');
	function validate(theform) {
		if (theform.message.value == "" && theform.subject.value == "") {
			alert("请完成标题或内容栏。");
			theform.message.focus();
			return false;
		} else if (theform.subject.value.length > 80) {
			alert("您的标题超过 80 个字符的限制。");
			theform.subject.focus();
			return false;
		}
		if (!disablepostctrl && ((postminchars != 0 && theform.message.value.length < postminchars) || (postmaxchars != 0 && theform.message.value.length > postmaxchars))) {
			alert("您的帖子长度不符合要求。\n\n当前长度: "+theform.message.value.length+" 字节\n系统限制: "+postminchars+" 发送到 "+postmaxchars+" 字节");
			return false;
		}
		if(!fetchCheckbox('parseurloff')) {
			theform.message.value = parseurl(theform.message.value, 'bbcode');
		}
		theform.replysubmit.disabled = true;
		return true;
	}
	</script>
<form method="post" id="postform"
	action="post.jsp?action=reply&amp;fid=4&amp;tid=4&amp;extra=page%3D1&amp;replysubmit=yes"
	onSubmit="return validate(this)">
	<input type="hidden" name="formhash" value="b29e1c42" />
	<div id="quickpost" class="box">
		<span class="headactions"><a
			href="member.jsp?action=credits&amp;view=forum_reply&amp;fid=4"
			target="_blank">查看积分策略说明</a> </span>
		<h4>
			快速回复主题
		</h4>
		<div class="postoptions">
			<h5>
				选项
			</h5>
			<p>
				<label>
					<input class="checkbox" type="checkbox" name="parseurloff"
						id="parseurloff" value="1">
					禁用 URL 识别
				</label>
			</p>
			<p>
				<label>
					<input class="checkbox" type="checkbox" name="smileyoff"
						id="smileyoff" value="1">
					禁用
					<a href="faq.jsp?action=message&amp;id=32" target="_blank">表情</a>
				</label>
			</p>
			<p>
				<label>
					<input class="checkbox" type="checkbox" name="bbcodeoff"
						id="bbcodeoff" value="1">
					禁用
					<a href="faq.jsp?action=message&amp;id=18" target="_blank">JspRun!代码</a>
				</label>
			</p>
			<p>
				<label>
					<input class="checkbox" type="checkbox" name="isanonymous"
						value="1">
					使用匿名发帖
				</label>
			</p>
			<p>
				<label>
					<input class="checkbox" type="checkbox" name="usesig" value="1"
						checked="checked">
					使用个人签名
				</label>
			</p>
			<p>
				<label>
					<input class="checkbox" type="checkbox" name="emailnotify"
						value="1">
					接收新回复邮件通知
				</label>
			</p>
		</div>
		<div class="postform">
			<h5>
				<label>
					标题
					<input type="text" name="subject" value="" tabindex="1">
				</label>
			</h5>
			<p>
				<label>
					内容
				</label>
				<textarea rows="7" cols="80" class="autosave" name="message"
					id="message" onKeyDown="ctlent(event);" tabindex="2"></textarea>
			</p>
			<p class="btns">
				<button type="submit" name="replysubmit" id="postsubmit"
					value="replysubmit" tabindex="3">
					发表帖子
				</button>
				[完成后可按 Ctrl+Enter 发布]&nbsp;
				<a href="###" id="previewpost"
					onclick="$('postform').action=$('postform').action + '&previewpost=yes';$('postform').submit();">预览帖子</a>&nbsp;
				<a href="###" id="restoredata" title="恢复上次自动保存的数据"
					onclick="loadData()">恢复数据</a>&nbsp;
				<a href="###" onclick="$('postform').reset()">清空内容</a>
			</p>
		</div>
		<div class="smilies">
			<div id="smilieslist"></div>
			<script type="text/javascript">ajaxget('post.jsp?action=smilies&rand='+Math.random(), 'smilieslist');</script>
		</div>
		<script type="text/javascript">
				var textobj = $('message');
				window.onbeforeunload = function () {saveData(textobj.value)};
				if(is_ie >= 5 || is_moz >= 2) {
					lang['post_autosave_none'] = "没有可以恢复的数据！";
					lang['post_autosave_confirm'] = "此操作将覆盖当前帖子内容，确定要恢复数据吗？";
				} else {
					$('restoredata').style.display = 'none';
				}
			</script>
	</div>
</form>
<script type="text/javascript">
		function modaction(action) {
			if(!action) {
				return;
			}
			if(!in_array(action, ['delpost', 'banpost'])) {
				window.location=('topicadmin.jsp?tid=4&fid=4&action='+ action +'&sid=nu9yV7');
			} else {
				document.modactions.action = 'topicadmin.jsp?action='+ action +'&fid=4&tid=4&page=1;'
				document.modactions.submit();
			}
		}
	</script>
<div id="footfilter" class="box">
	<form action="#">
		管理选项:
		<select name="action" id="action"
			onchange="modaction(this.options[this.selectedIndex].value)">
			<option value="" selected>
				管理选项
			</option>
			<option value="delpost">
				删除回帖
			</option>
			<option value="delete">
				删除主题
			</option>
			<option value="banpost">
				屏蔽帖子
			</option>
			<option value="close">
				关闭主题
			</option>
			<option value="move">
				移动主题
			</option>
			<option value="copy">
				复制主题
			</option>
			<option value="highlight">
				高亮显示
			</option>
			<option value="type">
				主题分类
			</option>
			<option value="digest">
				设置精华
			</option>
			<option value="stick">
				主题置顶
			</option>
			<option value="split">
				分割主题
			</option>
			<option value="merge">
				合并主题
			</option>
			<option value="bump">
				提升主题
			</option>
			<option value="repair">
				修复主题
			</option>
		</select>
	</form>
</div>

<script type="text/javascript">
var maxpage = 1;
if(maxpage > 1) {
	document.onkeyup = function(e){
		e = e ? e : window.event;
		var tagname = is_ie ? e.srcElement.tagName : e.target.tagName;
		if(tagname == 'INPUT' || tagname == 'TEXTAREA') return;
		actualCode = e.keyCode ? e.keyCode : e.charCode;
					}
}
</script>

<script src="include/javascript/msn.js" type="text/javascript"></script>
<jsp:include flush="true" page="footer.jsp" />