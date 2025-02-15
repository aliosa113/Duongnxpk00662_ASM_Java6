<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="admin/index.html">Điều khiển</a>
        </li>
        <li class="breadcrumb-item active">Danh sách loại tin</li>
    </ol>
    <!-- Example DataTables Card-->
    <div class="card mb-3">
        <div class="card-header">
            <i class="fa fa-table"></i> Bảng dữ liệu loại tin</div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Tiêu đề</th>
                            <th>Tóm tắt</th>
                            <th>Thời gian</th>
                            <th>Người đăng</th>
                            <th>Loại tin</th>
                            <th style="width: 50px;"><i class="fa fa-cog"></i></th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Tiêu đề</th>
                            <th>Tóm tắt</th>
                            <th>Thời gian</th>
                            <th>Người đăng</th>
                            <th>Loại tin</th>
                            <th></th>
                        </tr>
                    </tfoot>
                    	<tbody>
							<c:forEach var="u" items="${bvlist}">
								<tr>
									<td>${u.idtintuc}</td>
									<td>${u.tieude.substring(0,25)}...</td>
									<td>${u.tomtat.substring(0,25)}...</td>
									<td>${u.thoigian}</td>
									<td>${u.taikhoan.hodem} ${u.taikhoan.ten}</td>
									<td>
										<select style="width: 150px;">
			                               	 <c:forEach var="a" items="${ctbvlist}">
			                               	 	<c:if test="${a.tintuc.idtintuc == u.idtintuc}" >
			                                   	 	<option value="${a.loaitin.loaitin}">${a.loaitin.loaitin}</option>
			                                   	 </c:if>
			                                 </c:forEach>
			                            </select>
									</td>
									<td>
										<a href="admin/staikhoan/${u.idtintuc}.html" style="padding-right: 5px;">
											<i class="fa fa-pencil" title="Sửa bài viết"></i>
										</a>
										<a style="color: red; cursor: pointer;" 
										onclick="kiemtraxoatintuc('${u.idtintuc}','${u.tieude}')">
											<i class="fa fa-times" title="Xóa bài viết"></i>
										</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
                </table>
            </div>
        </div>
        <%
            DateFormat dateFormat = new SimpleDateFormat("HH:mm a - dd/MM/yyyy ");
            Date date = new Date();
        %>
        <div class="card-footer small text-muted">Cập nhật lúc <%= dateFormat.format(date)%></div>
    </div>
</div>
<!-- /.container-fluid-->