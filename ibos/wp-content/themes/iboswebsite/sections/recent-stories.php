
            <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'blog',
                    'posts_per_page' => 4,
                    'facetwp' => true,
                    );
                   $query = new WP_Query( $args );
               ?>
  <!-- stories section -->
    <section>
        <div class="stories-section">
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title">Recent Stories</h2>
                </div>
                <div class="stories-section-content">
                    <div class="row">
             <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="card single-story">
                                <div class="link-box">
                                    <a href="<?php the_permalink(); ?>"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-img" style="height: 170px;">
                                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS" style="width: 100%">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="#">
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
                    <!--
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="card single-story">
                                <div class="link-box">
                                    <a href="#"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/stories/02.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="#">
                                                    iBOS ERP Software making many business simple.
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="card single-story">
                                <div class="link-box">
                                    <a href="#"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/stories/03.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="#">
                                                    Our Company has arranged Agile training for employees.
                                                </a>
                                            </h2>
                                            <h6>June 29, 2021</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="card single-story">
                                <div class="link-box">
                                    <a href="#"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/stories/02.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt">
                                            <h6>Update</h6>
                                            <h2>
                                                <a href="#">
                                                    iBOS ERP Software making many business simple.
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
                    <div class="story-btn-section">
                        <a href="<?php echo get_option("siteurl"); ?>/category/blog/" class="btn btn-contact btn-story">
                            <span>more stories</span>
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>