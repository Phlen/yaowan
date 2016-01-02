<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\IndexModel;
use Home\Model\NewsListModel;
class IndexController extends Controller {
    public function index(){
    	$IndexModel = new IndexModel();
    	$slider = $IndexModel->getSlider();
    	$this->assign('slider',$slider);
    	$NewsModel = new NewsListModel();
    	$newItem = $NewsModel->getIndexNews();
    	$this->assign('newItems',$newItem);
        $this->show();
    }
}