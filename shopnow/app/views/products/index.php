<?php require APPROOT . '/views/inc/header.php'; ?>





 <div class="row">
 	<?php foreach ($data['products'] as $products) : ?>
 		<div class="col-md-4 d-block mb-4">
<div class="card" style="width: 18rem;">

   <?php echo "<img style='width:287px;
    height:150px;' src='images/".$products->pic. "'>"?>
  <div class="card-body">
    <h5 class="card-title text-center"><?php echo $products->title; ?></h5>
    <p class="card-text text-center"><?php echo $products->des; ?></p>
    <p class="card-text text-center"><strong><?php echo "Price " . $products->price . "$"; ?></strong></p>
     <form action="<?php echo URLROOT; ?>/products/process/<?php echo $products->id; ?>/<?php echo $products->title; ?>/<?php echo $products->price; ?>" method="POST">
     	<input type="hidden" name = "title" value="<?php echo $products->title; ?>" >
     	<input type="hidden" name = "id" value="<?php echo $products->id; ?>" >
     	<input type="hidden" name = "price" value="<?php echo $products->price *100; ?>" >
     
                              <script
                                src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                                style="margin-left: 12px;"
                                data-key="your_public_key_here"
                                data-email="<?php echo $_SESSION['user_email']; ?>"
                                data-amount="<?php echo $products->price * 100; ?>"
                                data-name="<?php echo $products->title; ?>"
                                data-description="Widget"
                                data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                                data-locale="auto">
                              </script>
                            </form>
  </div>
</div>
</div>
<?php endforeach; ?>
</div>








<?php require APPROOT . '/views/inc/footer.php'; ?>
