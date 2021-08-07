
 <?php get_template_part('sections/components/archive_header'); ?>

    <?php 
        $pages=get_the_title();
        //echo $pages;
            if ($pages == 'Be an extraordinary performer not just a workaholic.') {
                get_template_part('dynamic/all_blog/one');
            }
            else if($pages=='iBOS Accounting'){
               get_template_part('dynamic/all_blog/');
            }
             else if($pages=='iBOS RTM'){
              get_template_part('dynamic/all_blog/');
            }
             else if($pages=='iBOS SME'){
               get_template_part('dynamic/all_blog/');
            }
             else if($pages=='iBOS Enterprise'){
                get_template_part('dynamic/all_blog/');
            }
             else if($pages==''){
                get_template_part('dynamic/all_blog/');
            }
             else if($pages==''){
              get_template_part('dynamic/all_blog/');
            }
            else if($pages==''){
                    get_template_part('dynamic/all_blog/');
                }
     ?>

<?php get_footer();?>








    