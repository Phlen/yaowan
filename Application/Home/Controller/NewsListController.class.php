<?php
namespace Home\Controller;

use Think\Controller;
use Home\Model\NewsListModel;

class NewsListController extends Controller {

  public function index($page = 1, $page_size = 5) {
  	$newsModel = new NewsListModel();
  	$newItem = $newsModel->getNews($page, $page_size);
    $total_count = $newsModel->getTotal();
    $pageMeta = array(
      'page' => $page,
      'page_size' => $page_size,
      'page_count' => ceil($total_count / $page_size),
      'total_count' => $total_count,
    );
  	$this->assign('item',$newItem);
     $this->assign('page', $pageMeta);
  	$this->display('newsList');
    /*$this->redirect('index/index');*/
  }

  public function news() {
  	$this->redirect('news/news');
  }
}