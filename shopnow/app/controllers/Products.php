<?php 


class Products extends Controller {

	public function __construct() {

      $this->productModel = $this->model('Product'); 
      $this->userModel = $this->model('User');
		
	}



	public function index() {

		

		$products = $this->productModel->getProducts();
		$data = [
			"products" => $products
		];

		$this->view("products/index", $data);

		

		

	}


	public function process() {

      
        

 		 if($_SERVER["REQUEST_METHOD"] == "POST") {


        \Stripe\Stripe::setApiKey("your_secert_key_here");
		 	     
		\Stripe\Stripe::setVerifySslCerts(false);

		// Token is created using Checkout or Elements!
		// Get the payment token ID submitted by the form:

    
	


		
		$productID = $_POST['id'];
		$productpr = htmlspecialchars_decode($_POST['price']);
		$productti = $_POST['title'];

		 


		

		$token = $_POST['stripeToken'];
		$email = $_POST["stripeEmail"];
	     


	     $customer = \Stripe\Customer::create(array(  
        'email' => $email,
        'description' => $productti
      
    )); 




		// Charge the user's card:
		$charge = \Stripe\Charge::create(array(
			"amount" => $productpr,
			"currency" => "usd",
			"description" => $productti,
		    "source" => $token
			
		));
	    

	    	$data = [
			"amount" => $_POST['price'] / 100,
			"title" => $_POST['title'],
			"token" => $token,
			"id" => $productID,
			"user_id" => $_SESSION['user_id']
		];

	 
		
		if ($this->productModel->add($data)) {
			redirect('products/success/'.$data["id"].'');
		}  else {
			redirect("products/failed");
		}


    } else {

    	$data = [
			"amount" => '',
			"title" => '',
			"token" => '',
			"id" => '',
			"user_id" => ''
		];

      $this->view("products/index", $data);
    }
}




	public function success($id) {


		$succ = $this->productModel->success($id);
		$data = [
			"thanks" => "thanks for purchasing the product ",
			"succ" => $succ
		];

		$this->view("products/success", $data);
	}
}