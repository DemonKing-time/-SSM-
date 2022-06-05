<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>学生列表</title>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<!-- Bootstrap Core CSS -->
<link href="${ctx }/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx }/css/metisMenu.min.css" rel="stylesheet" />
<link href="${ctx }/css/dataTables.bootstrap.css" rel="stylesheet" />
<link href="${ctx }/css/sb-admin-2.css" rel="stylesheet" />
<link href="${ctx }/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx }/css/boot-crm.css" rel="stylesheet" type="text/css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
 <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
 <![endif]-->
</head>
<body>
	<div id="wrapper">
		<!-- 左侧菜单 -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<span class="navbar-brand">学生管理系统</span>
			</div>
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li><a href="list" class="active"><i
								class="fa fa-edit fa-fw"></i>学生信息管理</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">学生管理</h1>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline"
						action="${pageContext.request.contextPath }/student/list"
						method="get">
						<div class="form-group">

							<label for="customerName">姓名</label> <input type="text"
								class="form-control" id="customerName" value="${vo.custName }"
								name="custName" /> <label for="customerId">学号</label> <input
								type="text" class="form-control" id="customerName"
								value="${vo.custLinkman }" name="custLinkman" />
						</div>

						<div class="form-group">
							<label for="custIndustry">所属专业</label> <select
								class="form-control" id="custIndustry" name="custIndustry">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"
										<c:if test="${item.dict_id==vo.custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<div style="margin-bottom: 10px">
				<button type="submit" class="btn btn-primary" data-toggle="modal"
					data-target="#customerAddDialog">添加学生</button>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">学生信息列表</div>
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>学号</th>
									<th>姓名</th>
									<th>性别</th>
									<th>政治面貌</th>
									<th>就读专业</th>
									<th>入学时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${customer}" var="customer">
									<tr>
										<td>${customer.cust_linkman}</td>
										<td>${customer.cust_name}</td>
										<td>${customer.cust_phone}</td>
										<td>${customer.cust_source}</td>
										<td>${customer.cust_industry}</td>
										<td>${customer.cust_mobile}</td>


										<td><a href="#" class="btn btn-primary btn-xs"
											data-toggle="modal" data-target="#customerEditDialog"
											onclick="getCustomerById(${customer.cust_id})">修改</a> <a
											href="#" class="btn btn-danger btn-xs"
											onclick="deleteCustomer(${customer.cust_id})">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="col-md-12 text-right"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 编辑客户信息对话框 -->
	<div class="modal fade" id="customerEditDialog" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改学生信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_customer_form">
						<input type="hidden" id="edit_cust_id" name="cust_id" />
						<div class="form-group">
							<label for="edit_linkMan" class="col-sm-2 control-label">学号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_linkMan"
									placeholder="学号" name="cust_linkman" />
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_customerName"
									placeholder=姓名 name="cust_name" />
							</div>
						</div>
						<div class="form-group">
							<label for="edit_phone" class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_phone"
									placeholder="性别" name="cust_phone" />
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerFrom"
								style="float: left; padding: 7px 15px 0 27px;">政治面貌</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_customerFrom"
									placeholder="政治面貌" name="cust_source">
									<option value="">--请选择--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dict_id}"
											<c:if test="${item.dict_id==custSource}">selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_custIndustry"
								style="float: left; padding: 7px 15px 0 27px;">所属专业 </label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_custIndustry"
									name="cust_industry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"
											<c:if test="${item.dict_id==custIndustry}">selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">入学时间</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_mobile"
									placeholder="入学时间" name="cust_mobile" />
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="updateCustomer()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
	<!--添加客户信息对话框 -->
	<div class="modal fade" id="customerAddDialog" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加学生</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="add_customer_form">
						<div class="form-group">
							<label for="add_linkMan" class="col-sm-2 control-label">学号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="add_linkMan"
									placeholder="学号" name="cust_linkman" />
							</div>
						</div>
						<div class="form-group">
							<label for="add_customerName" class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="add_customerName"
									placeholder="姓名" name="cust_name" />
							</div>
						</div>
						<div class="form-group">
							<label for="add_phone" class="col-sm-2 control-label">性别</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="add_phone"
									placeholder="性别" name="cust_phone" />
							</div>
						</div>
						<div class="form-group">
							<label for="add_customerFrom"
								style="float: left; padding: 7px 15px 0 27px;">政治面貌 </label>
							<div class="col-sm-10">
								<select class="form-control" id="add_customerFrom"
									placeholder="政治面貌" name="cust_source">
									<option value="">--请选择--</option>
									<c:forEach items="${fromType}" var="item">
										<option value="${item.dict_id}"
											<c:if test="${item.dict_id==custSource}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="add_custIndustry"
								style="float: left; padding: 7px 15px 0 27px;">所属专业 </label>
							<div class="col-sm-10">
								<select class="form-control" id="add_custIndustry"
									name="cust_industry">
									<option value="">--请选择--</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.dict_id}"
											<c:if test="${item.dict_id==custIndustry}"> selected</c:if>>${item.dict_item_name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_mobile" class="col-sm-2 control-label">入学时间</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="add_mobile"
									placeholder="入学时间" name="cust_mobile" />
							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="addCustomer()">添加</button>
				</div>
			</div>
		</div>
	</div>
	<script src="${ctx }/js/jquery.min.js"></script>
	<script src="${ctx }/js/bootstrap.min.js"></script>
	<script src="${ctx }/js/metisMenu.min.js"></script>
	<script src="${ctx }/js/jquery.dataTables.min.js"></script>
	<script src="${ctx }/js/dataTables.bootstrap.min.js"></script>
	<script src="${ctx }/js/sb-admin-2.js"></script>
	<script type="text/javascript">
	function addCustomer() {
		$.ajax({
			type:"get",
			url:"${ctx}/student/addCustomer",
			data:
			{
			"cust_name": $("#add_customerName").val(),
			"cust_source": $("#add_customerFrom").val(),
			"cust_industry": $("#add_custIndustry").val(),
			"cust_linkman": $("#add_linkMan").val(),
			"cust_phone": $("#add_phone").val(),
			"cust_mobile": $("#add_mobile").val()
			},
	success:function(data) {
	if(data == "0"){
		alert("学生信息更新成功！");
		}else{
		alert("学生信息更新失败！");
		}
	window.location.reload();
	}
	});
	}
function getCustomerById(id) {
$.ajax({
type:"get",
url:"${ctx}/student/getCustomerById",
data:{"id":id},
success:function(data) {
$("#edit_cust_id").val(data.cust_id);
$("#edit_customerName").val(data.cust_name);
$("#edit_customerFrom").val(data.cust_source)
$("#edit_custIndustry").val(data.cust_industry)
$("#edit_linkMan").val(data.cust_linkman);
$("#edit_phone").val(data.cust_phone);
$("#edit_mobile").val(data.cust_mobile);
}
});
}
function updateCustomer() {
alert($("#edit_customer_form").serialize());
$.post("${ctx}/student/updateCustomer",$('#edit_customer_form').serialize(),function(data){
if(data == "0"){
alert("学生信息更新成功！");
}else{
alert("学生信息更新失败！");
}
window.location.reload();
});
}
function deleteCustomer(id) {
if(confirm('确实要删除该学生吗?')) {
$.post("${ctx}/student/deleteCustomer",{"id":id},function(data){
if(data == "0"){
alert("学生信息删除成功！");
}else{
alert("学生信息删除失败！");
}
window.location.reload();
});
} }
</script>
</body>
</html>