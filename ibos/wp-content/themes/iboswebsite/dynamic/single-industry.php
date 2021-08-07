


<?php get_header(); ?>


<?php 
    $pages=get_the_title();
    //echo $pages;
        if ($pages == 'Lorem Ipsum is simply dummy text of the printing') {
            get_template_part('dynamic/all_industry/one');
        }
        else if($pages=='Digitize your automotive enterprise with intuitive and user-friendly software'){
           get_template_part('dynamic/all_industry/two');
        }
         else if($pages=='iBOS RTM'){
          get_template_part('dynamic/all_industry/');
        }
         else if($pages=='iBOS SME'){
           get_template_part('dynamic/all_industry/');
        }
         else if($pages=='iBOS Enterprise'){
            get_template_part('dynamic/all_industry/');
        }
         else if($pages==''){
            get_template_part('dynamic/all_industry/');
        }
         else if($pages==''){
          get_template_part('dynamic/all_industry/');
        }
        else if($pages==''){
                get_template_part('dynamic/all_industry/');
            }
 ?>
<?php get_footer();?>