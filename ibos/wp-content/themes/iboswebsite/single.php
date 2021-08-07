

<?php 
    $cat = get_the_category(); 
    //echo $cat[0]->cat_name;

    if ($cat[0]->cat_name== 'iBOS Products') {
        get_template_part('dynamic/single-product');
    }
    else if($cat[0]->cat_name=='blog'){
       get_template_part('dynamic/single-blog');
    }
    else if($cat[0]->cat_name=='Industries We Serve'){
          get_template_part('dynamic/single-industry');
        }
    else if($cat[0]->cat_name=='Our Services'){
          get_template_part('dynamic/single-service');
        }





    else if($cat[0]->cat_name=='Recent Stories'){
          echo "Recent Stories";
        }

 ?>





