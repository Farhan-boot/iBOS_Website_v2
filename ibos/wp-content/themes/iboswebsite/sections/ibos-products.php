    <!-- products section -->
    <section>
        <div class="product-section">
            <!-- Curve shape -->
            <div class="custom-shape-divider-top-1626625548 d-mobile-none">
                <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120"
                    preserveAspectRatio="none">
                    <path d="M0,0V7.23C0,65.52,268.63,112.77,600,112.77S1200,65.52,1200,7.23V0Z" class="shape-fill">
                    </path>
                </svg>
            </div>
            <!-- Curve shape close -->

            <!-- shape start -->
            <div class="shape">
                <img class="shape-1 heartbeat" src="<?php echo get_template_directory_uri(); ?>/assets/images/product/product-big-circle.svg" alt="iBOS" />
                <img class="shape-2 heartbeat" src="<?php echo get_template_directory_uri(); ?>/assets/images/product/product-midium-circle.png" alt="iBOS" />
                <img class="shape-3 heartbeat" src="<?php echo get_template_directory_uri(); ?>/assets/images/product/product-small-circle.png" alt="iBOS" />
                <img class="shape-4" src="<?php echo get_template_directory_uri(); ?>/assets/images/product/product-dot.png" alt="iBOS" />
                <img class="shape-5" src="<?php echo get_template_directory_uri(); ?>/assets/images/product/product-dot.png" alt="iBOS" />
            </div>
            <!-- shape end -->

            <!-- Main container start -->
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title"><span></span>Our Products</h2>
                    <p class="section-para">
                       We have something for every business. Developed by our experts, the products are capable of providing top-notch solutions for your business. Check them out!
                    </p>
                </div>

              <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'ibos-products',
                    'posts_per_page' => 10,
                    'facetwp' => true,
                    );
                $query = new WP_Query( $args );
              ?>
                <div class="product-card owl-carousel owl-theme">

               <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>

                    <div class="single-card">
                        <div class="link-box">
                            <a href="<?php the_permalink(); ?>"></a>
                        </div>
                        <div class="card-image">
                            <img src="<?php echo get_post_custom_values('Icon')[0];?>" alt="iBOS" />
                        </div>
                        <div class="card-content">
                            <h4>
                                <a href="#"><?php echo wp_trim_words( get_the_title(), 6, '' );?></a>
                            </h4>
                            <p>
                                <?php echo wp_trim_words( get_the_content(), 11, '' );?>
                            </p>
                            <h6>
                                <a href="#">
                                    Learn more
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/right-arrow.svg" alt="iBOS">
                                </a>
                            </h6>
                        </div>
                    </div>
                <?php 
                    endwhile;
                    wp_reset_postdata(); 
                    endif; 
                ?>
            <!--
                    <div class="single-card">
                        <div class="link-box">
                            <a href="#"></a>
                        </div>
                        <div class="card-image">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/card-2.png" alt="iBOS" />
                        </div>
                        <div class="card-content">
                            <h4>
                                <a href="#">iBOS BMS</a>
                            </h4>
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and
                                typesetting industry. Lorem Ipsum has been the industry's
                                standard dummy text ever since the
                            </p>
                            <h6>
                                <a href="#">
                                    Learn more
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/right-arrow.svg" alt="iBOS">
                                </a>
                            </h6>
                        </div>
                    </div>
                    <div class="single-card">
                        <div class="link-box">
                            <a href="#"></a>
                        </div>
                        <div class="card-image">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/card-3.png" alt="iBOS" />
                        </div>
                        <div class="card-content">
                            <h4>
                                <a href="#">iBOS BMS</a>
                            </h4>
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and
                                typesetting industry. Lorem Ipsum has been the industry's
                                standard dummy text ever since the
                            </p>
                            <h6>
                                <a href="#">
                                    Learn more
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/right-arrow.svg" alt="iBOS">
                                </a>
                            </h6>
                        </div>
                    </div>
                    <div class="single-card">
                        <div class="link-box">
                            <a href="#"></a>
                        </div>
                        <div class="card-image">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/card-1.png" alt="iBOS" />
                        </div>
                        <div class="card-content">
                            <h4>
                                <a href="#">iBOS BMS</a>
                            </h4>
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and
                                typesetting industry. Lorem Ipsum has been the industry's
                                standard dummy text ever since the
                            </p>
                            <h6>
                                <a href="#">
                                    Learn more
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/right-arrow.svg" alt="iBOS">
                                </a>
                            </h6>
                        </div>
                    </div>
                    <div class="single-card">
                        <div class="link-box">
                            <a href="#"></a>
                        </div>
                        <div class="card-image">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/card-2.png" alt="iBOS" />
                        </div>
                        <div class="card-content">
                            <h4>
                                <a href="#">iBOS BMS</a>
                            </h4>
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and
                                typesetting industry. Lorem Ipsum has been the industry's
                                standard dummy text ever since the
                            </p>
                            <h6>
                                <a href="#">
                                    Learn more
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/right-arrow.svg" alt="iBOS">
                                </a>
                            </h6>
                        </div>
                    </div>
                    <div class="single-card">
                        <div class="link-box">
                            <a href="#"></a>
                        </div>
                        <div class="card-image">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/card-3.png" alt="iBOS" />
                        </div>
                        <div class="card-content">
                            <h4>
                                <a href="#">iBOS BMS</a>
                            </h4>
                            <p>
                                Lorem Ipsum is simply dummy text of the printing and
                                typesetting industry. Lorem Ipsum has been the industry's
                                standard dummy text ever since the
                            </p>
                            <h6>
                                <a href="#">
                                    Learn more
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/right-arrow.svg" alt="iBOS">
                                </a>
                            </h6>
                        </div>
                    </div>
            -->
                </div>
                <a href="<?php echo get_option("siteurl"); ?>/category/ibos-products/" class="btn hero-button">
                    <span>explore</span>
                    <i class="fa fa-arrow-right" aria-hidden="true"></i>
                </a>
            </div>
            <!-- Main container end -->

            <!-- Curve shape -->
            <div class="custom-shape-divider-bottom-1626625653 down d-mobile-none">
                <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120"
                    preserveAspectRatio="none">
                    <path d="M0,0V7.23C0,65.52,268.63,112.77,600,112.77S1200,65.52,1200,7.23V0Z" class="shape-fill">
                    </path>
                </svg>
            </div>
            <!-- Curve shape close -->
        </div>
    </section>