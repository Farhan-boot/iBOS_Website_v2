<?php get_header(); ?>

    <?php 
        $pages=get_the_title();
        //echo $pages;
            if ($pages == 'Custom Software Development') {
                get_template_part('dynamic/all_service/custom-software-development');
            }
            else if($pages=='UI/UX Design'){
               get_template_part('dynamic/all_service/ui-ux-design');
            }
             else if($pages=='E-Commerce Solution'){
              get_template_part('dynamic/all_service/e-commerce-solution');
            }
             else if($pages=='Custom Business Solution'){
               get_template_part('dynamic/all_service/custom-business-solution');
            }
             else if($pages=='Mobile App Development'){
                get_template_part('dynamic/all_service/mobile-app-development');
            }
             else if($pages=='Web Development'){
                get_template_part('dynamic/all_service/web-development');
            }

             else if($pages==''){
              get_template_part('dynamic/all_service/');
            }
            else if($pages==''){
                    get_template_part('dynamic/all_service/');
                }
     ?>

<?php get_footer();?>



    