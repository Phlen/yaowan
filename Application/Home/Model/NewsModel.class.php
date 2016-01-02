<?php

namespace Home\Model;

use Think\Model;

class NewsModel extends Model {
  protected $tableName = 'posts';
  function getNewsById($id) {
  	return $this->where(array('post_type' => 'post','ID'=>$id))->select();     
  }

  function getNewsImgById($id) {
  	$this->where(array('post_type' => 'post','ID'=>$id))->field('post_content')->select();
  	return $this;
  }
}