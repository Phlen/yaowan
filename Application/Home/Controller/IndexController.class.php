<?php
namespace Home\Controller;
use Think\Controller;
use Home\Model\IndexModel;
use Home\Model\NewsListModel;
use Home\Model\CategoryModel;
class IndexController extends Controller {
    public function index(){
    	$IndexModel = new IndexModel();
    	$slider = $IndexModel->getSlider();
    	$this->assign('slider',$slider);
    	$NewsModel = new NewsListModel();
    	$newItem = $NewsModel->getIndexNews();
    	$this->assign('newItems',$newItem);
    	$cateModel = new CategoryModel();
    	$category = $cateModel->getCategory();
    	$this->assign('cate',$category);
        $this->show();
    }
}