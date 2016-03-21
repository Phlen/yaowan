<?php
namespace Home\Controller;

use Think\Controller;
use Home\Model\NewsModel;
use Home\Model\CategoryModel;

class PageController extends Controller {

  public function index($id) {
  	$pageModel = new NewsModel();
  	$page = $pageModel->getPageByID($id);
  	$this->assign('page',$page);
  	$cateModel = new CategoryModel();
    $category = $cateModel->getCategory();
    $this->assign('cate',$category);
    $page_id = $id;
    $this->assign('page_id',$page_id);
  	$this->display('page');   
  }
}
