<?php
  class Product_model extends CI_Model {
       
      public function __construct(){
          
        $this->load->database();
        
      }
      
      //API call - get a state record by id
      public function search($keyword){  
        $this->db->like('product_name',$keyword);
        $query  =   $this->db->get('products');
           
           if($query->num_rows() == 1)
           {

               return $query->result_array();

           }
           else
           {

             return 0;

          }

      }

    //API call - get all states record
    public function getallproducts(){   

        $this->db->select('products.id,premise_id,product_name,product_picture,product_price,product_qty,created_dt,premise_name');

        $this->db->from('products');

        $this->db->join('premise','premise.id=products.premise_id','inner');

        $this->db->order_by("id", "asc"); 

        $query = $this->db->get();

        if($query->num_rows() > 0){

          return $query->result_array();

        }else{

          return 0;

        }

    }
   

}