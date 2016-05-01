<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 继承外部文件头 -->
<%@ include file="./publictemp/head.jsp"%>
<body>

	<div class="header">

		<c:if test="${userTCustom != null}">

			<%@ include file="./publictemp/headtop_desc_logined.jsp"%>

		</c:if>
		<c:if test="${userTCustom == null}">
			<%@ include file="./publictemp/headertop_desc.jsp"%>
		</c:if>


		<div class="wrap">
			<%@ include file="./publictemp/header_top.jsp"%>
			<%@ include file="./publictemp/head_bottom.jsp"%>
		</div>
	</div>


	<br>
	<br>
	<!------------End Header ------------>
	<div class="main">
		<div class="wrap">
			<div class="content">
				<div class="content_top">
					<div class="heading">
						<h3>New Products</h3>
					</div>
				</div>
				<div class="section group">

					<c:forEach items="${items }" var="item">

						<div class="grid_1_of_5 images_1_of_5">
							<a href="preview.html"> <img
								src="/springmvc_mybatis/${item.pic }" alt="" /> </a>
							<h2>
								<a href="preview.html">${item.name }</a>
							</h2>
							<div class="price-details">
								<div class="price-number">
									<p>
										<span class="rupees">$${item.price }</span>
									</p>
								</div>
								<div class="add-cart">
									<h4>
										<a href="preview.html">Add to Cart</a>
									</h4>
								</div>
								<div class="clear"></div>
							</div>
						</div>

					</c:forEach>
				</div>

				<div class="page">

					<font size="2">共 ${page.totalPageCount} 页</font> 
					<font size="2">第${page.pageNow} 页</font> 
					<a href="${pageContext.request.contextPath}/?pageNow=1">首页</a>
					
					<c:choose>
						
						<c:when test="${page.pageNow - 1 > 0 }">
						
							<a href="${pageContext.request.contextPath}/?pageNow=${page.pageNow - 1}">上一页</a>
						</c:when>
						
						<c:when test="${page.pageNow - 1 <= 0 }">
						
							<a href="${pageContext.request.contextPath}/?pageNow=1">上一页</a>
						</c:when>
					</c:choose>
					
					<c:choose>
						
						<c:when test="${page.pageNow + 1 <= page.totalPageCount }">
						
							<a href="${pageContext.request.contextPath}/?pageNow=${page.pageNow + 1 }">下一页</a>
						</c:when>
						
						<c:when test="${page.pageNow + 1 > page.totalPageCount }">
						
							<a href="${pageContext.request.contextPath}/?pageNow=${page.totalPageCount }">下一页</a>
						</c:when>
					
					</c:choose>

					<a href="${pageContext.request.contextPath}/?pageNow=${page.totalPageCount }">末页</a>

				</div>



				<div class="content_bottom">
					<div class="heading">
						<h3>Feature Products</h3>
					</div>
				</div>
				<div class="section group">
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.html"><img
							src="${pageContext.request.contextPath}/images/beauty_and_the_beast.jpg"
							alt="" /> </a>
						<h2>
							<a href="preview.html">Beauty and the beast</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$620.87</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.html">Add to Cart</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.html"><img
							src="${pageContext.request.contextPath}/images/Eclipse.jpg"
							alt="" /> </a>
						<h2>
							<a href="preview.html">Eclipse</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$620.87</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.html">Add to Cart</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.html"><img
							src="${pageContext.request.contextPath}/images/Coraline.jpg"
							alt="" /> </a>
						<h2>
							<a href="preview.html">Coraline</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$899.75</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.html">Add to Cart</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>

					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.html"><img
							src="${pageContext.request.contextPath}/images/Unstoppable.jpg"
							alt="" /> </a>
						<h2>
							<a href="preview.html">Unstoppable</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$599.00</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.html">Add to Cart</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="grid_1_of_5 images_1_of_5">
						<a href="preview.html"><img
							src="${pageContext.request.contextPath}/images/Priest.jpg" alt="" />
						</a>
						<h2>
							<a href="preview.html">Priest 3D</a>
						</h2>
						<div class="price-details">
							<div class="price-number">
								<p>
									<span class="rupees">$679.87</span>
								</p>
							</div>
							<div class="add-cart">
								<h4>
									<a href="preview.html">Add to Cart</a>
								</h4>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="./publictemp/foot.jsp"%>
</body>
</html>

