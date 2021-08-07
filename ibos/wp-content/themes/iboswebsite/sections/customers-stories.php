<!-- testimonial section -->
    <section>
        <div class="testimonial">
            <div class="container">
                <div class="testimonial-slider-content">
                    <div class="upper-dot">
                        <img class="upper-red-dot" src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/red_dots.png" alt="iBOS" />
                        <img class="upper-blue-dot" src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/blue-dots.png" alt="iBOS" />
                        <div class="person-upper-img">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/person3.png" alt="iBOS" />
                        </div>
                    </div>
                    <div class="title-section">
                        <h2 class="section-title">Our Amazing Customers Share Their Stories</h2>
                    </div>
                   <?php 
                         $ourclient = new WP_Query(array(
                         'post_type' =>'Customers_Stories',
                         'posts_per_page' =>'-1'
                        ));
                     ?>
                     <?php rewind_posts(); ?>
                    <div class="testimonial-slider">
                        <div class="hub-slider">
                            <div class="hub-slider-slides">
                                <ul>
                  <?php if(have_posts()) : while($ourclient->have_posts()) : $ourclient->the_post(); ?>
                     <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                                    <li>
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/aps.png" alt="iBOS" />
                                        <p>
                                           <?php echo wp_trim_words( get_the_title(), 30, '' );?>
                                        </p>
                                    </li>
                        <?php endwhile; endif; ?>
                                    <!--
                                    <li>
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/aps.png" alt="iBOS" />
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and
                                            typesetting industry.
                                        </p>
                                    </li>
                                    <li>
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/aps.png" alt="iBOS" />
                                        <p>
                                            Lorem Ipsum has been the industry's
                                            standard dummy text ever since the 1502s,
                                        </p>
                                    </li>
                                    <li>
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/aps.png" alt="iBOS" />
                                        <p>
                                            Lorem Ipsum is simply dummy text of the printing and
                                            typesetting industry. Lorem Ipsum has been the industry's
                                            standard dummy text ever since the 1503s,
                                        </p>
                                    </li>
                                    <li>
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/aps.png" alt="iBOS" />
                                        <p>
                                            Lorem Ipsum has been the industry's standard dummy text ever since the
                                            1504s,
                                        </p>
                                    </li>
                                -->
                                </ul>
                            </div>
                            <div class="hub-slider-controls">
                                <button class="hub-slider-arrow hub-slider-arrow_prev">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/left.svg" alt="iBOS">
                                </button>
                                <button class="hub-slider-arrow hub-slider-arrow_next">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/right.svg" alt="iBOS">
                                </button>
                            </div>
                        </div>
                        <div class="person-middle-img">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/person1.png" alt="iBOS" />
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/person4.png" alt="iBOS" />
                        </div>
                        <div class="blue-dot-section">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/blue-dots.png" alt="iBOS" />
                            <div class="person-bottom-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/person2.png" alt="iBOS" />
                            </div>
                        </div>
                        <div class="aps-inv">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/testimonial/ups_inv.png" alt="iBOS" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>