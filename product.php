<?php
session_start();
?>
  <!--Header-->
  <?php
include 'common/header.php';
require 'common/common.php';
include 'common/check_if_added.php';
?>

 <!-- Offer Start -->
 <div class="container-fluid pt-5 pb-3">
        <div class="row px-xl-5">
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="img/beardo with butcher.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="product.php" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="img/25beardo_oil.png" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <a href="product.php" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->

<div class="container-fluid pt-5 pb-3" >
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary bg-light pr-3">Featured Products</span></h2>
        <div class="row px-xl-5">
    <?php  

$sum = 0;
$query = " SELECT products.price AS Price, products.id AS id, products.name AS Name,products.mprice AS Mprice, products.image AS Loca,products.star AS Star,products.review AS Revi FROM products";
$result = mysqli_query($con, $query);
if (mysqli_num_rows($result) >= 1) {  

 ?><?php
 while ($row = mysqli_fetch_array($result)) {
        $sum += $row["Price"];
        $id = $row["id"];
        $name = $row["Name"];
        $price = $row["Price"];
        $mprice = $row["Mprice"];
        $loca = $row["Loca"];
        $star = $row["Star"];
        $revi = $row["Revi"];
       


   ?>
                <div class="col-lg-3 col-md-4 col-sm-6 pb-1" >
                    <div class="product-item bg-light mb-4">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src=<?php echo $loca ?> alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                                <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a>
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href=""><?php echo $name ?></a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <h5>Rs. <?php echo $price ?></h5><h6 class="text-muted ml-2"><del>Rs. <?php echo $mprice ?></del></h6>
                            </div>
                            <div class="d-flex align-items-center justify-content-center mb-1">
                           
                                
                                <?php
$float_val = $star;

$val2=5;
$val1=round($float_val);
$val=intval($float_val);
$x = 0; ?> <?php 
while($x < $val) { ?>
    <small class="fa fa-star text-primary mr-1"></small>
 <?php   $x++;
  }                     
  $y = $val1 - $val;
  $p = 0;
while($p < $y) {          
 ?>
 <small class="fa fa-star-half-alt text-primary mr-1"></small>
<?php $x++; 
$p++;}
  
  $z = $val2 - $x;
while($z > 0) { ?>
<small class="far fa-star text-primary mr-1"></small>
<?php  
  $z--;
} ?>
                                
                                <small>(<?php echo $revi ?>)</small>
                                
                            </div>
                            <?php if (!isset($_SESSION['email'])) {?>
                        <p><a href="index.php#login" role="button" class="btn btn-warning  text-white ">Add To Cart</a></p>
                        <?php
                        } else {
                        if (check_if_added_to_cart($id)) {
                         echo '<p><a href="#" class="btn btn-warning  text-white" disabled>Added to cart</a></p>';
                        } else {
                            ?>
                            <p><a href="cart-add.php?id=<?php echo $id ?>" name="add" value="add" class="btn btn-warning  text-white">Add to cart</a><p>
                            <?php
                            }
                        }
                        ?>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <?php
} else {
    echo "<div> <img src='images/emptycart.png' class='image-fluid' height='150' width='150'></div><br/>";
    echo "<div class='text-bold  h5'>Add items to the cart first!<div>";

}
?>
                        <?php
?>
                
        </div>
    </div>





<?php include('common/footer.php') ?>
