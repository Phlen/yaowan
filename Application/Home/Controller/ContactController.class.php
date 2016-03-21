<?php
namespace Home\Controller;

use Think\Controller;
use Home\Model\CategoryModel;

class ContactController extends Controller {

  public function index() {
  	$cateModel = new CategoryModel();
    $category = $cateModel->getCategory();
    $this->assign('cate',$category);
  	$this->display('contact');
    /*$this->redirect('index/index');*/
  }
}