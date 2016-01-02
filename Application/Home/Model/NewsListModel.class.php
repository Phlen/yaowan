<?php

namespace Home\Model;

use Think\Model;

class NewsListModel extends Model {
  protected $tableName = 'posts';

  function getIndexNews() {
    return $this->where(array('post_type' => 'post' ,'post_status'=>'publish'))->order('post_date DESC')->limit(3)
      ->select();
  }

  function getNews($page, $page_size) {
  	return $this->where(array('post_type' => 'post','post_status'=>'publish'))
  	->page($page, $page_size)
  	->order('post_date DESC')->select();     
  }

  function getTotal() {
    return $this->where(array('post_type' => 'post','post_status'=>'publish'))->field('count(ID) as total_count')->find()['total_count'];
  }
}