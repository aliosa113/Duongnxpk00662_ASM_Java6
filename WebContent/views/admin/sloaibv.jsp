<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container-fluid">
	<!-- Breadcrumbs-->
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="#">Điều khiển</a></li>
		<li class="breadcrumb-item active">Sửa loại bài viết</li>
	</ol>
	<!-- Icon Cards-->
	<div class="row">
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col-md-10 col-md-auto">
					<form action="admin/sloaibv.html" method="post" id="sualbv" >
						<input name="idloaibv" type="hidden" value="${loait.idloaitin}">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Loại bài viết</label>
							<div class="col-sm-10" id="label-validation">
								<input name="tenloai" type="text" class="form-control"
									placeholder="Nhập tên loại bài viết" value="${loait.loaitin}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">Mô tả</label>
							<div class="col-sm-10" id="label-validation">
								<input name="mota" type="text" class="form-control"
									placeholder="Mô tả loại bài" value="${loait.mota }">${message}
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-2"></div>
							<div class="col-sm-10 offset-md-3">
								<button type="submit" class="btn btn-primary">Sửa</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>