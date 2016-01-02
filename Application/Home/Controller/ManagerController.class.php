<?php
namespace Home\Controller;

use Think\Controller;

class ManagerController extends Controller {

  public function index() {
  	$this->display('manager');
    /*$this->redirect('index/index');*/
  }

}