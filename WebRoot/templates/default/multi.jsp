<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<c:if test="${logpage.totalSize > lpp}">
	<div class="pages">
		<em>&nbsp;${logpage.totalSize}&nbsp;</em>
		<!-- 如果当前页不是第一页面，且大于10页时，且当前页大于4时则显示1 ... -->
		<c:if test="${logpage.totalPage>10 && logpage.currentPage>=4}">
			<c:choose>
				<c:when test="${logpage.staticurl=='true'}"><a href="${url}-1.html" class="first" ${onclick}>1...</a></c:when>
				<c:otherwise><a href="${url}&page=1" class="first" ${onclick}>1...</a></c:otherwise>
			</c:choose>
		</c:if>
		<!-- 如果当前页不是第一页面，则显示<< -->
		<c:if test="${logpage.currentPage != logpage.prePage}">
			<c:choose>
				<c:when test="${logpage.staticurl=='true'}"><a href="${url}-${logpage.prePage}.html" class="prev" ${onclick}>&lsaquo;&lsaquo;</a></c:when>
				<c:otherwise><a href="${url}&page=${logpage.prePage}" class="prev" ${onclick}>&lsaquo;&lsaquo;</a></c:otherwise>
			</c:choose>
		</c:if>
		<c:choose>
			<c:when
				test="${logpage.totalPage>10 && logpage.currentPage>=4 && logpage.totalPage-(logpage.currentPage-2)>=10}">
				<!-- 显示滚动的页码信息 -->
				<c:forEach var="num" begin="${logpage.currentPage-2}" end="${(logpage.currentPage-2)+9}" step="1">
					<c:choose>
						<c:when test="${logpage.currentPage == num}">
							<strong>${logpage.currentPage}</strong>
						</c:when>
						<c:otherwise>
								<c:choose>
									<c:when test="${logpage.staticurl=='true'}"><a href="${url}-${num}.html" ${onclick}>${num}</a></c:when>
									<c:otherwise><a href="${url}&page=${num}" ${onclick}>${num}</a></c:otherwise>
								</c:choose>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${logpage.totalPage>10 && logpage.currentPage>=4}">
						<!-- 显示后半部分信息 -->
						<c:forEach var="num" begin="${logpage.totalPage-9}" end="${logpage.totalPage}" step="1">
							<c:choose>
								<c:when test="${logpage.currentPage == num}">
									<strong>${logpage.currentPage}</strong>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${logpage.staticurl=='true'}"><a href="${url}-${num}.html" ${onclick}>${num}</a></c:when>
										<c:otherwise><a href="${url}&page=${num}" ${onclick}>${num}</a></c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${logpage.totalPage>10}">
								<!-- 显示前半部分值 -->
								<c:forEach var="num" begin="1" end="10" step="1">
									<c:choose>
										<c:when test="${logpage.currentPage == num}">
											<strong>${logpage.currentPage}</strong>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${logpage.staticurl=='true'}"><a href="${url}-${num}.html" ${onclick}>${num}</a></c:when>
												<c:otherwise><a href="${url}&page=${num}" ${onclick}>${num}</a></c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<!-- 如果不够10页则显示 -->
								<c:forEach var="num" begin="1" end="${logpage.totalPage}"
									step="1">
									<c:choose>
										<c:when test="${logpage.currentPage == num}">
											<strong>${logpage.currentPage}</strong>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${logpage.staticurl=='true'}"><a href="${url}-${num}.html" ${onclick}>${num}</a></c:when>
												<c:otherwise><a href="${url}&page=${num}" ${onclick}>${num}</a></c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>
		<!-- 如果当前页不是最后页面，则显示 《 《-->
		<c:if test="${logpage.currentPage != logpage.nextPage}">
			<c:choose>
				<c:when test="${logpage.staticurl=='true'}"><a href="${url}-${logpage.nextPage}.html" class="next" ${onclick}>&rsaquo;&rsaquo;</a></c:when>
				<c:otherwise><a href="${url}&page=${logpage.nextPage}" class="next" ${onclick}>&rsaquo;&rsaquo;</a></c:otherwise>
			</c:choose>
		</c:if>
		<!-- 如果超过一定范围则显示... -->
		<c:if test="${logpage.totalPage>10 && (logpage.totalPage-logpage.currentPage)>7}">
			<c:choose>
				<c:when test="${logpage.staticurl=='true'}"><a href="${url}-${logpage.totalPage}.html" class="last" ${onclick}>... ${logpage.totalPage}</a></c:when>
				<c:otherwise><a href="${url}&page=${logpage.totalPage}" class="last" ${onclick}>... ${logpage.totalPage}</a></c:otherwise>
			</c:choose>
		</c:if>
		<!-- 如果页数大于10则显示此框-->
		<c:if test="${logpage.totalPage>10}">
			<kbd>
				<c:choose>
					<c:when test="${logpage.staticurl=='true'}"><input type="text" name="custompage" size="2"  style="width:30px;" onkeydown="if(event.keyCode==13) {window.location='${url}-'+this.value+'.html'; return false;}" /></c:when>
					<c:otherwise><input type="text" name="custompage" size="2"  style="width:30px;" onkeydown="if(event.keyCode==13) {window.location='${url}&type=${type}&page='+this.value; return false;}" /></c:otherwise>
				</c:choose>
			</kbd>
		</c:if>
	</div>
</c:if>