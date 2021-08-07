 <?php get_template_part('sections/components/archive_header'); ?>

    <!-- blog-gallery section -->
    <section>
        <div class="blog-gallery-section">
            <div class="container">
                <h2 class="blog-gallery-title">Latest Stories</h2>
                <div class="blog-gallery-content">
            <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'blog',
                    'posts_per_page' => 1,
                    'facetwp' => true,
                    );
                 $query = new WP_Query( $args );
            ?>
                    <!-- 1st row -->
                    <div class="row">
            <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                        <div class="col-12">
                            <div class="single-blog-big-item bg-gray p-40">
                                <div class="link-box">
                                    <a href="<?php the_permalink()?>"></a>
                                </div>
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="single-blog-big-img">
                                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="single-story-txt single-blog-big-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                   <?php echo wp_trim_words( get_the_title(), 6, '' );?>
                                                </a>
                                            </h2>
                                            <h6><?php the_time( 'j M Y' ); ?></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                 <?php 
                    endwhile;
                    wp_reset_postdata(); 
                     endif; 
                 ?>
        </div>
               <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'blog',
                    'posts_per_page' => 5,
                    'facetwp' => true,
                    );
                      $query = new WP_Query( $args );
                 ?>
                    <!-- 2nd row -->
                    <div class="row">
             <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                  <?php 
                        $postNumber1++;
                        if ($postNumber1>1){
                    ?>
                        <div class="col-sm-6">
                            <div class="single-blog-item">
                                <div class="link-box">
                                    <a href="<?php the_permalink()?>"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img">
                                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                 <?php echo wp_trim_words( get_the_title(), 6, '' );?>
                                                </a>
                                            </h2>
                                            <h6><?php the_time( 'j M Y' ); ?></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                <?php } ?>
             <?php 
                endwhile;
                wp_reset_postdata(); 
                 endif; 
             ?>
                    <!--
                        <div class="col-sm-6">
                            <div class="single-blog-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/02.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    Planning to make your Taxation more efficient than ever?
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="single-blog-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/03.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    Problems don’t seem that big when you have a bigger solution!
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="single-blog-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/04.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    In just a few clicks, manage your salesforce with iBOS RTM.
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    -->
                    </div>

                    <!-- 3rd row -->
                    <div class="row">
                <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'blog',
                    'posts_per_page' => -1,
                    'facetwp' => true,
                    );
                      $query = new WP_Query( $args );
                 ?>  
             <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                  <?php 
                        $postNumber1++;
                        if ($postNumber1>7){
                    ?>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-blog-item single-blog-small-item">
                                <div class="link-box">
                                    <a href="<?php the_permalink()?>"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img single-blog-small-img">
                                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt single-blog-small-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                  <?php echo wp_trim_words( get_the_title(), 6, '' );?>
                                                </a>
                                            </h2>
                                            <h6><?php the_time( 'j M Y' ); ?></h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                <?php } ?> 
                 <?php 
                    endwhile;
                    wp_reset_postdata(); 
                     endif; 
                 ?>
                    <!--
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-blog-item single-blog-small-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img single-blog-small-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/06.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt single-blog-small-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    iBOS procurement enables procurement department to inspect orders
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-blog-item single-blog-small-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img single-blog-small-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/07.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt single-blog-small-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    Wearables already have created a huge hype among the users.
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-blog-item single-blog-small-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img single-blog-small-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/08.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt single-blog-small-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    A set of tools designed to automate various HRM tasks are mandatory.
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-blog-item single-blog-small-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img single-blog-small-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/09.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt single-blog-small-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    Odoo is built for all types of companies: small, medium or large.
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single-blog-item single-blog-small-item">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-blog-img single-blog-small-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/10.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt single-blog-txt single-blog-small-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="single-blog.html">
                                                    iBOS SME simplifies the inventory tracking process, eliminates
                                                    errors
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    -->
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!-- blog-feature section -->
    <section>
        <div class="featured-story-section">
            <div class="container">
                <div class="featured-title">
                    <h2>Featured Stories</h2>
                </div>
                <div class="featured-slider">
                    <div class="main-slider blog-feature-slider">
                        <div class="single-slide">
                            <div class="slider-content">
                                <h2>In Just a few clicks, manage your sales
                                    force with iBOS Route To Market</h2>
                                <h6>June 29, 2021</h6>
                            </div>
                        </div>

                        <div class="single-slide">
                            <div class="slider-content">
                                <h2>In Just a few clicks, manage your sales
                                    force with iBOS Route To Market</h2>
                                <h6>June 29, 2021</h6>
                            </div>
                        </div>

                        <div class="single-slide">
                            <div class="slider-content">
                                <h2>In Just a few clicks, manage your sales
                                    force with iBOS Route To Market</h2>
                                <h6>June 29, 2021</h6>
                            </div>
                        </div>
                    </div>
                    <div class="next-prev-btn">
                        <div class="prev"><i class="fa fa-chevron-left"></i></div>
                        <div class="next"><i class="fa fa-chevron-right"></i></div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- more-blog section -->
    <section>
        <div class="more-blog-content">
            <div class="container">
                <h2 class="blog-gallery-title">More from iBOS</h2>

                <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'blog',
                    'posts_per_page' => 6,
                    'facetwp' => true,
                    'order' => 'ASC',
                    );
                      $query = new WP_Query( $args );
                 ?>  
                <div class="row">

    <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
        <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
            
                    <div class="col-xl-6 col-12">
                        <div class="single-blog-item single-blog-float-item">
                            <div class="link-box">
                                <a href="<?php the_permalink()?>"></a>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="single-blog-img single-blog-float-img">
                                        <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="single-story-txt single-blog-txt single-blog-float-txt">
                                        <h6>Press Release</h6>
                                        <h2>
                                            <a href="single-blog.html">
                                                <?php echo wp_trim_words( get_the_title(), 6, '' );?>
                                            </a>
                                        </h2>
                                        <p>
                                            <?php echo wp_trim_words( get_the_content(), 15, '' );?>
                                        </p>
                                        <h6><?php the_time( 'j M Y' ); ?></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    <?php 
         endwhile;
         wp_reset_postdata(); 
         endif; 
     ?>


                 <!--
                    <div class="col-xl-6 col-12">
                        <div class="single-blog-item single-blog-float-item">
                            <div class="link-box">
                                <a href="single-blog.html"></a>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="single-blog-img single-blog-float-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/12.png" alt="iBOS">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="single-story-txt single-blog-txt single-blog-float-txt">
                                        <h6>Press Release</h6>
                                        <h2>
                                            <a href="single-blog.html">
                                                Human Capital management refers to managing an organization’s
                                                employees
                                            </a>
                                        </h2>
                                        <p>
                                            This the meaning of insanity, insanity means doing one fucking thing
                                            ever and ever.
                                        </p>
                                        <h6>June 29, 2021</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-12">
                        <div class="single-blog-item single-blog-float-item">
                            <div class="link-box">
                                <a href="single-blog.html"></a>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="single-blog-img single-blog-float-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/13.png" alt="iBOS">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="single-story-txt single-blog-txt single-blog-float-txt">
                                        <h6>Press Release</h6>
                                        <h2>
                                            <a href="single-blog.html">
                                                Odoo is a comprehensive open-source enterprise resource planning
                                                software
                                            </a>
                                        </h2>
                                        <p>
                                            This the meaning of insanity, insanity means doing one fucking thing
                                            ever and ever.
                                        </p>
                                        <h6>June 29, 2021</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-12">
                        <div class="single-blog-item single-blog-float-item">
                            <div class="link-box">
                                <a href="single-blog.html"></a>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="single-blog-img single-blog-float-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/14.png" alt="iBOS">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="single-story-txt single-blog-txt single-blog-float-txt">
                                        <h6>Press Release</h6>
                                        <h2>
                                            <a href="single-blog.html">
                                                iBOS worked with distinctive clients in its lifetime
                                            </a>
                                        </h2>
                                        <p>
                                            This the meaning of insanity, insanity means doing one fucking thing
                                            ever and ever.
                                        </p>
                                        <h6>June 29, 2021</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-12">
                        <div class="single-blog-item single-blog-float-item">
                            <div class="link-box">
                                <a href="single-blog.html"></a>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="single-blog-img single-blog-float-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/15.png" alt="iBOS">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="single-story-txt single-blog-txt single-blog-float-txt">
                                        <h6>Press Release</h6>
                                        <h2>
                                            <a href="single-blog.html">
                                                The market for ERP software in the Asia Pacific has grown to
                                                $9.67 billion by 2020
                                            </a>
                                        </h2>
                                        <p>
                                            This the meaning of insanity, insanity means doing one fucking thing
                                            ever and ever.
                                        </p>
                                        <h6>June 29, 2021</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-12">
                        <div class="single-blog-item single-blog-float-item">
                            <div class="link-box">
                                <a href="single-blog.html"></a>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="single-blog-img single-blog-float-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blog/16.png" alt="iBOS">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="single-story-txt single-blog-txt single-blog-float-txt">
                                        <h6>Press Release</h6>
                                        <h2>
                                            <a href="single-blog.html">
                                                Our iBOS Tax Management is a simple arranged platform
                                            </a>
                                        </h2>
                                        <p>
                                            This the meaning of insanity, insanity means doing one fucking thing
                                            ever and ever.
                                        </p>
                                        <h6>June 29, 2021</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                -->


                </div>
                 <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'blog',
                    'posts_per_page' => -1,
                    'facetwp' => true,
                    'order' => 'ASC',
                    );
                      $query = new WP_Query( $args );
                 ?> 
                <div class="row toggle-blog">
  <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                  <?php 
                        $postNumber2++;
                        if ($postNumber2>6){
                    ?>
                    <div class="col-xl-6 col-12">
                        <div class="single-blog-item single-blog-float-item">
                            <div class="link-box">
                                <a href="<?php the_permalink()?>"></a>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="single-blog-img single-blog-float-img">
                                        <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="single-story-txt single-blog-txt single-blog-float-txt">
                                        <h6>Press Release</h6>
                                        <h2>
                                            <a href="single-blog.html">
                                                 <?php echo wp_trim_words( get_the_title(), 6, '' );?>
                                            </a>
                                        </h2>
                                        <p>
                                             <?php echo wp_trim_words( get_the_content(), 15, '' );?>
                                        </p>
                                        <h6><?php the_time( 'j M Y' ); ?></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            <?php } ?> 
                 <?php 
                    endwhile;
                    wp_reset_postdata(); 
                     endif; 
                 ?>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="more-blog-btn-section">
                            <button type="button" class="btn service-btn btn-seemore">
                                <span>View More</span>
                                <i class="fa fa-arrow-right" aria-hidden="true"></i>
                            </button>
                            <button type="button" class="btn service-btn btn-seeless">
                                <span>Less View</span>
                                <i class="fa fa-arrow-right" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php get_footer();?>
