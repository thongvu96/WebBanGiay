<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="x_title">
	<h2>List Product</h2>

	<div class="clearfix"></div>
</div>
<div class="x_content">
	<table id="datatable" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Product Name</th>
				<th>Product Code</th>
				<th>Category</th>
				<th>Information</th>
				<th>Price</th>
				<th>Description</th>
				<th>Action</th>
			</tr>
		</thead>


		<tbody>
			<c:forEach items="${allProduct}" var="product" varStatus="status">
				<tr>
					<td>${product.productId}</td>
					<td>${product.productName}</td>
					<td>${product.productCode}</td>
					<td>${product.categoryName}</td>
					<td>${product.information}</td>
					<td>${product.price}</td>
					<td>${product.description}</td>
					<td><a
						href="${pageContext.request.contextPath}/admin/product/edit/${product.productId}"
						class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit
					</a> <a
						href="${pageContext.request.contextPath}/admin/product/delete/${product.productId}"
						class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
							Delete </a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

