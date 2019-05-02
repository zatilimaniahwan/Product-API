<?php

require(APPPATH.'/libraries/REST_Controller.php');
 
class Product extends REST_Controller{
    
    public function __construct()
    {
        parent::__construct();

        $this->load->model('product_model');
    }

   

    //API -  Fetch All states
    function products_get(){

        $result = $this->product_model->getallproducts();

        if($result){

            $this->response($result, 200); 

        } 

        else{

            $this->response("No record found", 404);

        }
    }
     
    //API - create a new state item in database.
    function search_post(){
        $keyword    =   $this->input->post('keyword');
        if(!$keyword){

            $this->response("No keyword specified", 400);

            exit;
        }

        $result = $this->product_model->search($keyword);

        if($result){

            $this->response($result, 200); 

            exit;
        } 
        else{

             $this->response("Invalid keyword", 404);

            exit;
        }

    }

    
    


}