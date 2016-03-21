<?php

namespace Home\Model;

use Think\Model;

class NewsListModel extends Model {
  protected $tableName = 'posts';

  function getIndexNews() {
    $Model = new Model();
    return $Model->table('wp_posts')->join('wp_term_relationships ON wp_posts.ID = wp_term_relationships.object_id')
                  ->where(array('wp_posts.post_type' => 'post','wp_posts.post_status'=>'publish'))
                  ->where("wp_term_relationships.term_taxonomy_id = 1")
                  ->order('post_date DESC')
                  ->limit(3) 
                  ->select(); 
    /*return $this->where(array('post_type' => 'post' ,'post_status'=>'publish'))->order('post_date DESC')->limit(3)
      ->select();*/
  }

  function getNews($page, $page_size) {
  	/*return $this->join('term_relationships ON post.ID = term_relationships.object_id ')
                ->where(array('post_type' => 'post','post_status'=>'publish')
               ->page($page, $page_size)
               ->order('post_date DESC')  
              ->select();  */  
    $Model = new Model();
    return $Model->table('wp_posts')->join('wp_term_relationships ON wp_posts.ID = wp_term_relationships.object_id')
                  ->where(array('wp_posts.post_type' => 'post','wp_posts.post_status'=>'publish'))
                  ->where("wp_term_relationships.term_taxonomy_id = 1")
                  ->page($page, $page_size)
                  ->order('post_date DESC')   
                  ->select(); 
   /* $Model = new Model();
    return $Model->query("SELECT * from wp_posts wp where wp.post_type = 'post' 
      and wp.post_status = 'publish' 
      join wp_term_relationships wtr where wp.ID = wtr.object_id and wtr.term_taxonomy_id = 1 ")->page($page, $page_size)
    ->order('post_date DESC')  ; */
  }

  function getTotal() {
    return $this->where(array('post_type' => 'post','post_status'=>'publish'))->field('count(ID) as total_count')->find()['total_count'];
  }
}