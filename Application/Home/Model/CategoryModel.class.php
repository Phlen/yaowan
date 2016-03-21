<?php

namespace Home\Model;

use Think\Model;

class CategoryModel extends Model {
  protected $tableName = 'terms';

  function getCategory() {
  /*	$data['slug'] <> 'uncategorized';
    return $this->where($data)->select();*/
    $Model = new Model();
    return $Model->query("select * from wp_terms where wp_terms.slug <> 'uncategorized'");
  }
}