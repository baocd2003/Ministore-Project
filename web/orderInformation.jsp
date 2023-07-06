
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ministore</title>
        <link rel="stylesheet" href="./css/cartConfirmation.css">

        <!-- Icon CDN -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
              integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />


        <!-- boostrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

        <!-- font Inter -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600;700;800&display=swap"
              rel="stylesheet">
    </head>

    <body>


        <!--HEADER-->
        <header>
            <c:import url="header_cart.jsp" />
        </header>

        <!-- HEADER PATH -->
        <nav class="navbar navbar-expand-lg ">
            <div class="container justify-content-start mt-4">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="homePage.jsp">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="MainController?action=viewMyOrders">Orders</a>
                        </li>
                        <li class="breadcrumb-item active">
                            <a href="#">Order Information</a>
                        </li>
                    </ol>
                </nav>
            </div>
        </nav>

        <div class="container mb-5">
            <div class="row justify-content-between">
                <c:if test="${requestScope.noti != null}">
                    ${requestScope.noti}
                </c:if>

                <!-- info -->
                <div class="col-lg-5 order-info">
                    <form action="">
                        <div class="form-item my-4 d-flex align-items-center justify-content-center">
                            <div class="col-3">
                                <label for="">Name</label>
                            </div>
                            <div class="col-9">
                                <input type="text" id="name" disabled="" value="${requestScope.order.customerName}">
                            </div>
                        </div>

                        <div class="form-item my-4 d-flex align-items-center justify-content-center">
                            <div class="col-3">
                                <label for="">Order Date</label>
                            </div>
                            <div class="col-9">
                                <input type="datetime" id="orderDate" disabled="" value="${requestScope.order.orderDate}">
                            </div>
                        </div>

                        <div class="form-item my-4 d-flex align-items-center justify-content-center">
                            <div class="col-3">
                                <label for="">Ship Date</label>
                            </div>
                            <div class="col-9">
                                <input type="datetime" id="shipDate" disabled="" value="${requestScope.order.shipDate}">
                            </div>
                        </div>

                        <div class="form-item my-4 d-flex align-items-center justify-content-center">
                            <div class="col-3">
                                <label for="">Phone</label>
                            </div>
                            <div class="col-9">
                                <input type="tel" id="phone" disabled="" value="${requestScope.order.phone}">
                            </div>
                        </div>

                        <div class="form-item my-4 d-flex align-items-center justify-content-center">
                            <div class="col-3">
                                <label for="">Address</label>
                            </div>
                            <div class="col-9">
                                <input type="text" id="address" disabled="" value="${requestScope.order.address}">
                            </div>
                        </div>

                        <div class="form-item my-4 d-flex align-items-center justify-content-center">
                            <div class="col-3">
                                <label for="">Voucher</label>
                            </div>
                            <div class="col-9">
                                <c:choose>
                                    <c:when test="${requestScope.voucher.discount != null}">
                                        <input type="text" id="voucher" disabled="" value="-$${requestScope.voucher.discount}">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="text" id="voucher" disabled="" value="">
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>

                        <div class="  status-orderDetail d-flex justify-content-between mt-5">
                            <div>Status</div>
                            <div>
                                <c:choose>
                                    <c:when test="${requestScope.order.status eq 2}">
                                        Delivering
                                    </c:when>
                                    <c:when test="${requestScope.order.status eq 3}">
                                        Completed
                                    </c:when>
                                    <c:when test="${requestScope.order.status eq 4}">
                                        Canceled
                                    </c:when>
                                    <c:otherwise>
                                        Processing
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </form>
                </div>


                <!-- check out -->
                <div class="col-lg-6 checkout">
                    <div class="row">
                        <table class="table-fixed text-center">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th></th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                </tr>
                            </thead>

                            <tbody>
                                <c:forEach var="details" items="${requestScope.orderDetailsList}">
                                    <tr>
                                        <td  class="cart-item-img">                                                 
                                            <img src="${details.imgPath}" style="width: 80px;"/>
                                        </td>
                                        <td class="cart-item-title">${details.productName}</td>
                                        <td>${details.quantity}</td>
                                        <td class="cart-price">$${details.money}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="total mt-4">
                        <p>Total</p>
                        <p>$${requestScope.order.totalMoney}</p>
                    </div>

                    <c:if test="${requestScope.error != null}">
                        <div class="alert alert-danger alert-dismissible fade show notification mt-5" role="alert" style="padding: 15px 45px;text-align: center;width:430px;opacity: 100%;margin: 30px auto">
                            <strong class="error">${requestScope.error}</strong> 
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" style="width:20px"></button>
                        </div>
                    </c:if>


                    <div class="mt-4 d-flex justify-content-between">
                        <div class="">
                            <c:if test="${requestScope.order.status == 4 || requestScope.order.status == 3}">
                                <div class="">
                                    <a href="MainController?action=reorder&orderid=${requestScope.order.orderID}" 
                                       class="btn btn_reorder" role="button">Reorder</a>
                                </div>
                            </c:if>
                        </div>
                        <div class="">
                            <c:choose>
                                <c:when test="${requestScope.order.status == 1}">
                                    <a href="MainController?action=updateOrderStatus&orderid=${requestScope.order.orderID}&status=4" 
                                       class="btn btn-danger btn-cancel" role="button">Cancel</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="" class="btn btn-danger disabled" role="button">Cancel</a>
                                </c:otherwise>
                            </c:choose>
                        </div>



                    </div>

                </div>

            </div>
        </div>

        <footer>
            <c:import url="footer.jsp" />
        </footer>
    </body>

</html>