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

  function getPageById($id) {
  	$Model = new Model();
    return $Model->table('wp_posts')->join('wp_term_relationships ON wp_posts.ID = wp_term_relationships.object_id')
                  ->where(array('wp_posts.post_type' => 'post','wp_posts.post_status'=>'publish'))
                  ->where("wp_term_relationships.term_taxonomy_id = $id") 
                  ->select(); 
  }
}