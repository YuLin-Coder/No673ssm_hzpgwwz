<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="plugins/layui/controller.js"></script>
</head>
<body>
	<div class="admin-main">
		<blockquote class="layui-elem-quote">
			<span style="text-align: left">${html }</span> <span style="float: right"><a href="goods/getAllGoods.action"
				class="layui-btn layui-btn-small"> <i class="layui-icon">&#x1002;</i>&nbsp;刷新数据
			</a></span>
		</blockquote>
		<fieldset class="layui-elem-field">
			<legend>商品数据列表</legend>
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
							<th style="text-align: center" width="150">操作</th>
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
							<td><a href="goods/getGoodsById.action?id=${goods.goodsid}">编辑</a>&nbsp;&nbsp;<a
								href="goods/deleteGoods.action?id=${goods.goodsid}"
								onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</fieldset>
	</div>
</body>
</html>

