<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<jsp:include flush="true" page="header.jsp" />
<div id="nav">
	<a href="${settings.indexname}"> ${settings.bbname} </a> &raquo; <a href="stats.jsp">论坛统计</a> &raquo; 管理团队
</div>
<div class="container">
	<div class="side">
		<jsp:include flush="true" page="stats_navbar.jsp" />
	</div>
	<div class="content">
		<div class="mainbox">
			<h1>
				管理团队 - 管理员和超级版主
			</h1>
			<table summary="管理员和超级版主" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<td>
							用户名
						</td>
						<td>
							管理头衔
						</td>
						<td>
							上次访问
						</td>
						<td>
							离开天数
						</td>
						<td>
							积分
						</td>
						<td>
							帖子
						</td>
						<td>
							最近 30 天发帖
						</td>
						<td>
							总计在线
						</td>
						<td>
							本月在线
						</td>
					</tr>
				</thead>
				<tr>
					<td>
						<a href="space.jsp?uid=1">admin</a>
					</td>
					<td>
						论坛管理员
					</td>
					<td>
						2008-5-21 08:52
					</td>
					<td>
						0
					</td>
					<td>
						40
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						4.5 小时
					</td>
					<td>
						3.17 小时
					</td>
				</tr>
			</table>
		</div>
		<div class="notice">
			统计数据已被缓存，上次于 2008-5-21 10:40 被更新，下次将于 2008-5-21 13:40 进行更新
		</div>
	</div>
</div>

<jsp:include flush="true" page="footer.jsp" />
