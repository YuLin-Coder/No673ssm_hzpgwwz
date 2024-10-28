<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用网站后台管理系统</title>
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="plugins/layui/controller.js"></script>
</head>
<body>
	<div class="admin-main">
		<fieldset class="layui-elem-field">
			<legend>商品数据查询</legend>
			<div class="layui-field-box layui-form">
				<table class="layui-table">

					<thead>
						<tr>
							<th style="text-align: center">商品名称</th>
							<th style="text-align: center">商品类型</th>
							<th style="text-align: center">销售价格</th>
							<th style="text-align: center">是否推荐</th>
							<th style="text-align: center">是否特价</th>
							<th style="text-align: center">库存数量</th>
							<th style="text-align: center">销售数量</th>
							<th style="text-align: center">点击数</th>
							<th style="text-align: center">上架日期</th>
						</tr>
					</thead>
					<c:forEach items="${goodsList}" var="goods">
						<tr align="center">
							<td>${goods.goodsname}</td>
							<td>${goods.catename}</td>
							<td>${goods.price}</td>
							<td>${goods.recommend}</td>
							<td>${goods.special}</td>
							<td>${goods.storage}</td>
							<td>${goods.sellnum}</td>
							<td>${goods.hits}</td>
							<td>${goods.addtime}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</fieldset>
		<blockquote class="layui-elem-quote" style="text-align: right">
			<form action="goods/queryGoodsByCond.action" name="myform" method="post">
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">查询条件</label>
						<div class="layui-input-block">
							<select name="cond" class="layui-input">
								<option value="goodsname">按商品名称查询</option>
								<option value="image">按商品图片查询</option>
								<option value="cateid">按商品类型查询</option>
								<option value="price">按销售价格查询</option>
								<option value="recommend">按是否推荐查询</option>
								<option value="special">按是否特价查询</option>
								<option value="storage">按库存数量查询</option>
								<option value="sellnum">按销售数量查询</option>
								<option value="hits">按点击数查询</option>
								<option value="addtime">按上架日期查询</option>
								<option value="contents">按商品详情查询</option>
							</select>
						</div>
					</div>
					<div class="layui-inline">

						<div class="layui-input-block">
							<input type="text" name="name" required style="width: 200px" class="layui-input" />
						</div>
					</div>
					<div class="layui-inline">
						<input type="submit" value="查询" class="layui-btn" />
					</div>
				</div>
			</form>
		</blockquote>
	</div>
</body>
</html>
