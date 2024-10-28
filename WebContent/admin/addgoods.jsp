<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="plugins/layui/controller.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/goods.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<div style="margin: 15px;">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
			<legend>新增商品信息</legend>
		</fieldset>
		<form id="addForm" class="layui-form" action="goods/addGoods.action" name="myform" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label">商品名称</label>
				<div class="layui-input-inline" style="width: 45%;">
					<input type="text" name="goodsname" class="layui-input" id="goodsname" placeholder="请输入商品名称" />
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">商品图片</label>
				<div class="layui-input-inline" style="width: 45%;">
					<input class="layui-input" type="text" name="image" id="image" onclick="selimage();" placeholder="请选择图片"
						readonly="readonly" />
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">商品类型</label>
				<div class="layui-input-inline" style="width: 45%;">
					<select name="cateid" id="cateid"><option value="">---请选择商品类型--</option><c:forEach items="${cateList}" var="cate">
							<option value="${cate.cateid}">${cate.catename }</option>
						</c:forEach></select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">销售价格</label>
				<div class="layui-input-inline" style="width: 45%;">
					<input type="text" name="price" class="layui-input" id="price" placeholder="请输入销售价格" />
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">是否推荐</label>
				<div class="layui-input-inline shortInput">
					<input type="radio" name="recommend" value="是" title="是" checked> <input type="radio" name="recommend"
						value="否" title="否">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">是否特价</label>
				<div class="layui-input-inline shortInput">
					<input type="radio" name="special" value="是" title="是" checked> <input type="radio" name="special"
						value="否" title="否">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">库存数量</label>
				<div class="layui-input-inline" style="width: 45%;">
					<input type="text" name="storage" class="layui-input" id="storage" placeholder="请输入库存数量" />
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">商品详情</label>
				<div class="layui-input-inline" style="width: 45%;">
					<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
					<textarea name="contents" id="contents" placeholder="请输入商品详情"> </textarea>
					<script type="text/javascript">
						CKEDITOR.replace('contents', {
							language : 'zh-cn'
						});
					</script>
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="submit" id="sub">立即提交</button>
					<button type="reset" class="layui-btn" id="res">取消重置</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>

