 <!-- services section -->
    <section>
        <div class="services">
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title">Our Services</h2>
                    <p class="section-para">
                       We believe in serving our customers with the simplest, powerful, and secure business solutions. Our priorities and focuses are transparency, flexibility, and diversity.
                    </p>
                </div>

              <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'our-services',
                    'posts_per_page' => 6,
                    'facetwp' => true,
                    );
                   $query = new WP_Query( $args );
               ?>

                <div class="service-section-content">
                    <div class="row">
              <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-service-card">
                                <div class="link-box">
                                    <a href="<?php the_permalink(); ?>"></a>
                                </div>
                                <div class="single-service-card-img">
                                    <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS" />
                                </div>
                                <div class="single-service-txt">
                                    <h4>
                                        <a href="web-development.html"><?php echo wp_trim_words( get_the_title(), 6, '' );?></a>
                                    </h4>
                                    <p>
                                       <?php echo wp_trim_words( get_the_content(), 15, '' );?>
                                    </p>
                                </div>
                                <a href="web-development.html" class="service-card-arrow">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/arrow.svg" alt="iBOS" />
                                </a>
                            </div>
                        </div>
                    <?php 
                        endwhile;
                        wp_reset_postdata(); 
                        endif; 
                    ?>
                    <!--
                        <div class="col-lg-4 col-md-6">
                            <div class="single-service-card">
                                <div class="link-box">
                                    <a href="mobile-development.html"></a>
                                </div>
                                <div class="single-service-card-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/phone_iphone.svg" alt="iBOS" />
                                </div>
                                <div class="single-service-txt">
                                    <h4>
                                        <a href="mobile-development.html">
                                            Mobile App Development
                                        </a>
                                    </h4>
                                    <p>
                                        Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                    </p>
                                </div>
                                <a href="mobile-development.html" class="service-card-arrow">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/arrow.svg" alt="iBOS" />
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-service-card">
                                <div class="link-box">
                                    <a href="custom-business.html"></a>
                                </div>
                                <div class="single-service-card-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/business_center.svg" alt="iBOS" />
                                </div>
                                <div class="single-service-txt">
                                    <h4>
                                        <a href="custom-business.html">
                                            Custom Business Solution
                                        </a>
                                    </h4>
                                    <p>
                                        Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                    </p>
                                </div>
                                <a href="custom-business.html" class="service-card-arrow">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/arrow.svg" alt="iBOS" />
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-service-card">
                                <div class="link-box">
                                    <a href="e-commerce.html"></a>
                                </div>
                                <div class="single-service-card-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/shopping_cart.svg" alt="iBOS" />
                                </div>
                                <div class="single-service-txt">
                                    <h4>
                                        <a href="e-commerce.html">
                                            E-commerce Solution
                                        </a>
                                    </h4>
                                    <p>
                                        Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                    </p>
                                </div>
                                <a href="e-commerce.html" class="service-card-arrow">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/arrow.svg" alt="iBOS" />
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-service-card">
                                <div class="link-box">
                                    <a href="uiux.html"></a>
                                </div>
                                <div class="single-service-card-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/design_services.svg" alt="iBOS" />
                                </div>
                                <div class="single-service-txt">
                                    <h4>
                                        <a href="uiux.html">
                                            UI/UX Design
                                        </a>
                                    </h4>
                                    <p>
                                        Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                    </p>
                                </div>
                                <a href="uiux.html" class="service-card-arrow">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/arrow.svg" alt="iBOS" />
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-service-card">
                                <div class="link-box">
                                    <a href="custom-softwear.html"></a>
                                </div>
                                <div class="single-service-card-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/layers.svg" alt="iBOS" />
                                </div>
                                <div class="single-service-txt">
                                    <h4>
                                        <a href="custom-softwear.html">
                                            Custom Software Development
                                        </a>
                                    </h4>
                                    <p>
                                        Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                    </p>
                                </div>
                                <a href="custom-softwear.html" class="service-card-arrow">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/arrow.svg" alt="iBOS" />
                                </a>
                            </div>
                        </div>
                    -->


                    </div>
                    <div>
                        <a href="<?php echo get_option("siteurl"); ?>/category/our-services/" class="btn service-btn">
                            <span>View Details</span>
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>