<?php 


class Product {
	private $db;

	public function __construct () {
		$this->db = new Database;
	}



   public function getProducts() {
   	$this->db->query("SELECT * FROM products");

   	$rows = $this->db->resultSet();

   	return $rows;

   }


   public function add($data) {
   	$this->db->query("INSERT INTO orders (amount, title, token, user_id, id) VALUES (:amount, :title, :token, :user_id, :id)");

   	$this->db->bind(":amount", $data['amount']);
   	$this->db->bind(":title", $data['title']);
   	$this->db->bind(":token", $data['token']);
   	$this->db->bind(":user_id", $data['user_id']);
   	$this->db->bind(":id", $data['id']);


   	if ($this->db->execute()) {
   		return true;

   	} else {
   		return false;
   	}

   }


   public function success($id) {
   	$this->db->query("SELECT * FROM products WHERE id = :id");

   	$this->db->bind(':id', $id);

   	$row = $this->db->single();

   	return $row;
   }


	
}