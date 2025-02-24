<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <meta name="description" content="" />
                    <meta name="author" content="" />
                    <title>Update Order - Laptopshop</title>
                    <link href="/css/styles.css" rel="stylesheet" />
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                </head>

                <body class="sb-nav-fixed">
                    <jsp:include page="../layout/header.jsp" />
                    <div id="layoutSidenav">
                        <jsp:include page="../layout/sidebar.jsp" />
                        <div id="layoutSidenav_content">
                            <main>
                                <div class="container-fluid px-4">
                                    <h1 class="mt-4">Orders</h1>
                                    <ol class="breadcrumb mb-4">
                                        <li class="breadcrumb-item">Dashboard</li>
                                        <li class="breadcrumb-item active">Order</li>
                                        <li class="breadcrumb-item active">Update</li>
                                    </ol>
                                    <div class="mt-5">
                                        <div class="row">
                                            <div class="col-md-6 col-12 mx-auto">
                                                <h3>Update a user</h3>
                                                <hr />

                                                <form:form method="post" action="/admin/order/update"
                                                    modelAttribute="newOrder" class="row" enctype="multipart/form-data">
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Order id:
                                                            <form:input type="text" class="form-control" path="id"
                                                                disabled="true" />
                                                        </label>
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Price:
                                                            <form:input type="text" class="form-control"
                                                                path="totalPrice" disabled="true" />
                                                        </label>
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">User:</label>
                                                        <form:input type="text" class="form-control"
                                                            path="receiverName" />
                                                    </div>
                                                    <div class="mb-3 col-12 col-md-6">
                                                        <label class="form-label">Status:</label>
                                                        <input type="hidden" name="id" value="${newOrder.id}" />
                                                        <select name="status" class="form-select">
                                                            <option value="PENDING">PENDING</option>
                                                            <option value="SHIPPING">SHIPPING</option>
                                                            <option value="COMPLETE">COMPLETE</option>
                                                            <option value="CANCEL">CANCEL</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-12 mb-5">
                                                        <button type="submit" class="btn btn-warning">Update</button>
                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                    </main>
                    </div>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                    <script src="/js/scripts.js"></script>
                </body>

                </html>