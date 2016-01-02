<?php
namespace Home\Controller;

use Think\Controller;
use Home\Model\NewsModel;

class NewsController extends Controller {

  public function index($id) {
  	$newsModel = new NewsModel();
  	$news = $newsModel->getNewsById($id);
  	$this->assign('news',$news);
  	$this->display('news');
    /*$this->redirect('index/index');*/
  }
}