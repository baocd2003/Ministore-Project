<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./css/productDetail.css">

  <!-- boostrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

  <!-- font Inter -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;800&display=swap" rel="stylesheet" />

  <!-- font icon cdn -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="./js/index.js">
  </head>

<body>


  <!-- HEADER PATH -->
  <nav class="navbar navbar-expand-lg header-path mb-4">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Home</a>
          </li>
          <li class="breadcrumb-item">
            <a href="#">Category</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">
            <a href="#">Meat & Seafood</a>
          </li>
        </ol>
      </nav>
    </div>
  </nav>

  <!-- PRODUCT DETAIL -->
  <div class="container product-detail">
    <div class="row">
      <div class="col-5 product-detail-img">
        <img src="images/Item.png" alt="">
      </div>

      <div class="col-6">
        <div class="title mb-4">Organic Tomato 1kg</div>

        <div class="description mb-4">
          The tomato (Solanum lycopersicum) is a culinary vegetable/botanical fruit, or specifically, a berry (but not a
          fruit as ordinary people use the word).
        </div>

        <div class="d-flex group-price mb-4">
          <div class="bricked-price">$1.07</div>
          <div class="price">$0.81</div>
        </div>

        <div class="d-flex">
          <div class="group-quantity">
            <button class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
              <i class="fas fa-minus"></i>
            </button>
            <input class="quantity fw-bold text-black" min="0" name="quantity" value="1" type="number">
            <button class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
              <i class="fas fa-plus"></i>
            </button>
          </div>

          <div class="notification">
            <p>Only <span>10</span> items left!</p>
          </div>
        </div>

        <div class="cart-btn">
          <a href="#" class="btn btn-primary mt-3 px-3 py-2 fw-bold">Add To Cart</a>
        </div>


      </div>
    </div>
  </div>

  <!-- RELATED PRODUCT -->
  <div class="container related-product my-5">
    <div class="title text-center mb-5">Related Products</div>
    <div class="row row-cols-md-4 d-flex justify-content-between" style="width: 100%;">

      <div class="col col-sm-6" style="width: 15rem;">
          <!-- begin item -->
          <div class="item item-card mb-4 text-center">
              <div class="card border-0 shadow">
                  <img src="images/Item.png" class="card-img-top" alt="">
                  <div class="card-body">
                      <h5 class="card-title mb-3 fw-bold">Chicken Egg</h5>
                      <span class="bricked-price mx-2">$1.36</span>
                      <span class="price fw-bold mx-2">$1.19</span></br>
                      <a href="#" class="btn btn-primary mt-3 px-3 py-2 fw-bold">Add To Cart</a>
                  </div>
              </div>
          </div>
          <!-- end item -->
      </div>

      <div class="col col-sm-6" style="width: 15rem;">
          <!-- begin item -->
          <div class="item item-card mb-4 text-center">
              <div class="card border-0 shadow">
                <img src="images/Item.png" class="card-img-top" alt="">
                <div class="card-body">
                      <h5 class="card-title mb-3 fw-bold">Chicken Egg</h5>
                      <span class="bricked-price mx-2">$1.36</span>
                      <span class="price fw-bold mx-2">$1.19</span></br>
                      <a href="#" class="btn btn-primary mt-3 px-3 py-2 fw-bold">Add To Cart</a>
                  </div>
              </div>
          </div>
          <!-- end item -->
      </div>

      <div class="col col-sm-6" style="width: 15rem;">
          <!-- begin item -->
          <div class="item item-card mb-4 text-center">
              <div class="card border-0 shadow">
                <img src="images/Item.png" class="card-img-top" alt="">
                <div class="card-body">
                      <h5 class="card-title mb-3 fw-bold">Chicken Egg</h5>
                      <span class="bricked-price mx-2">$1.36</span>
                      <span class="price fw-bold mx-2">$1.19</span></br>
                      <a href="#" class="btn btn-primary mt-3 px-3 py-2 fw-bold">Add To Cart</a>
                  </div>
              </div>
          </div>
          <!-- end item -->
      </div>

      <div class="col col-sm-6" style="width: 15rem;">
          <!-- begin item -->
          <div class="item item-card mb-4 text-center">
              <div class="card border-0 shadow">
                <img src="images/Item.png" class="card-img-top" alt="">
                <div class="card-body">
                      <h5 class="card-title mb-3 fw-bold">Chicken Egg</h5>
                      <span class="bricked-price mx-2">$1.36</span>
                      <span class="price fw-bold mx-2">$1.19</span></br>
                      <a href="#" class="btn btn-primary mt-3 px-3 py-2 fw-bold">Add To Cart</a>
                  </div>
              </div>
          </div>
          <!-- end item -->
      </div>

      <div class="col col-sm-6" style="width: 15rem;">
          <!-- begin item -->
          <div class="item item-card mb-4 text-center">
              <div class="card border-0 shadow">
                <img src="images/Item.png" class="card-img-top" alt="">
                <div class="card-body">
                      <h5 class="card-title mb-3 fw-bold">Chicken Egg</h5>
                      <span class="bricked-price mx-2">$1.36</span>
                      <span class="price fw-bold mx-2">$1.19</span></br>
                      <a href="#" class="btn btn-primary mt-3 px-3 py-2 fw-bold">Add To Cart</a>
                  </div>
              </div>
          </div>
          <!-- end item -->
      </div>

  </div>
  </div>

  <!-- back to top -->
  <button type="button" class="btn btn-danger btn-floating btn-lg" id="btn-back-to-top">
    <i class="fas fa-arrow-up"></i>
  </button>

</body>

</html>