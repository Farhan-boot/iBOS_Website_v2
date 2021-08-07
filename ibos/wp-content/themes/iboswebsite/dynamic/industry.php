<?php get_header(); ?>
    <!-- hero section -->
    <section>
        <div class="hero-section hero-another-section industry-bg">
            <div class="container">
                <div class="hero-content">
                    <h2>Industries</h2>
                    <p class="hero-para">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the industry's standard dummy text ever since the 1500s.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- industry-card section -->
    <section>
        <div class="industry-card-section">
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title">Lorem ipsum dolor sit amet</h2>
                    <p class="section-para">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the industry's standard dummy text ever since the 1500s.
                    </p>
                </div>
                <div class="industry-card-content">
            <?php
                    $args = array(
                    'post_type'      => 'post',
                    'category_name'  => 'industries-we-serve',
                    'posts_per_page' => -1,
                    'facetwp' => true,
                    );
                 $query = new WP_Query( $args );
            ?>
                    <div class="row">
      <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
           <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="<?php the_permalink()?>"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="<?php the_permalink()?>"><?php echo wp_trim_words( get_the_title(), 6, '' );?></a>
                                        </h2>
                                        <h6>
                                            <?php echo wp_trim_words( get_the_content(), 10, '' );?>
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="<?php the_permalink()?>"><?php echo wp_trim_words( get_the_title(), 6, '' );?></a>
                                            </h2>
                                            <h6>
                                               <?php echo wp_trim_words( get_the_content(), 10, '' );?>
                                            </h6>
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
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/02.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">Health Care</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/02.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">Health Care</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/03.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">Telecom</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/03.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">Telecom</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/04.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">E-commerce Solution</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/04.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">E-commerce Solution</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/05.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">Real Estate</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/05.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">Real Estate</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/06.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">Software</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/06.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">Software</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/07.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">Startup</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/07.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">Startup</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/08.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">Education</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/08.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">Education</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-xl-4 col-sm-6 col-12">
                            <div class="card single-story single-industry-card">
                                <div class="link-box">
                                    <a href="single-industry.html"></a>
                                </div>
                                <div class="single-industry-card-overlay">
                                    <div class="single-industry-card-overlay-img">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/09.png" alt="iBOS">
                                    </div>
                                    <div class="single-industry-card-overlay-txt single-story-txt">
                                        <h2>
                                            <a href="#">Retail</a>
                                        </h2>
                                        <h6>
                                            Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                        </h6>
                                        <div class="icon">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="single-story-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/09.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="single-story-txt">
                                            <h2>
                                                <a href="#">Retail</a>
                                            </h2>
                                            <h6>
                                                Use of Apps to Improve Medication Adherence and Achieve More Integrated
                                            </h6>
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

    <!-- idea-ellipse section -->
    <section>
        <div class="idea-ellipse-section about-idea-ellipse industry-idea-ellipse">
            <div class="idea-img">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/01.png" alt="iBOS">
            </div>
            <div class="ellipse ellipse-1"></div>
            <div class="ellipse ellipse-2"></div>
            <div class="ellipse ellipse-3"></div>
            <div class="container">
                <div class="ideas-ellipse-content">
                    <h2>
                        Can’t Find Appropriate Industry For You?
                    </h2>
                    <p>
                        We are here to hear from you about your business purpose and help you with proper guidence.
                    </p>
                    <a href="<?php echo get_option("siteurl"); ?>/contact/" class="btn hero-button">
                        Contact us
                        <i class="fa fa-arrow-right" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

<?php get_footer();?>