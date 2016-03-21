
<?php
return array(
	URL_ROUTER_ON => true,

  	URL_ROUTE_RULES => array(
  		'page/:id\d' => 'page/index',
	    'news/:id\d' => 'news/index',
	    /*'lists/:page\d' => 'newsList/page/index',*/
	    'list/[:page\d]/[:page_size\d]' => 'newsList/page/index'
  	),
);
