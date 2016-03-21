<?php
namespace Home\Controller;

use Think\Controller;
use Home\Model\NewsModel;
use Home\Model\CategoryModel;

class NewsController extends Controller {

  public function index($id) {
  	$newsModel = new NewsModel();
  	$news = $newsModel->getNewsById($id);
  	$this->assign('news',$news);
  	$cateModel = new CategoryModel();
    $category = $cateModel->getCategory();
    $this->assign('cate',$category);
  	$this->display('news');
    /*$this->redirect('index/index');*/
  }
}