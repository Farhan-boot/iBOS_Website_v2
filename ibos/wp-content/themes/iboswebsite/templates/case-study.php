<?php 
    /*
      Template Name: Case-Study-Template
    */ 
?>

<?php get_header(); ?>

    <!-- hero section -->
    <section>
        <div class="hero-section hero-another-section case-study-bg">
            <div class="container">
                <div class="hero-content">
                   <h2><?php $pages=get_the_title(); $pagesTitle= strtolower($pages); echo ucwords($pagesTitle); ?></h2>
                    <p class="hero-para">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the industry's standard dummy text ever since the 1500s,
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- case-portfolio section -->
    <section>
        <div class="case-portfolio-section">
            <div class="container">
                <div class="case-portfolio-content">
                    <!-- filter Items -->
                    <nav>
                        <div class="items case-study-slider owl-carousel">
                            <div class="item active-class" data-name="all">All</div>
                            <div class="item" data-name="e-commerce">E-commerce</div>
                            <div class="item" data-name="healthcare">Healthcare</div>
                            <div class="item" data-name="erp">ERP</div>
                            <div class="item" data-name="ui-ux">UI/UX</div>
                            <div class="item" data-name="sme">SME</div>
                            <div class="item" data-name="fintech">Fintech</div>
                            <div class="item" data-name="business">Business</div>
                            <div class="item" data-name="web">Development</div>
                            <div class="item" data-name="business">Business</div>
                            <div class="item" data-name="web">Web Development</div>
                        </div>
                    </nav>
                    <!-- filter Images -->
                    <div class="gallery">
                        <div class="row">
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="e-commerce">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="<?php echo get_option("siteurl"); ?>//mobile-app/"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image3.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image3.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8 col-sm-6 col-12 single-case-card" data-name="healthcare">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image2.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image2.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="erp">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image3.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image3.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="ui-ux">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image4.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image4.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="sme">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image5.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image5.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8 col-sm-6 col-12 single-case-card" data-name="fintech">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image6.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image6.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="business">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image7.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image7.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="web">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image8.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image8.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="web">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image9.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image9.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="web">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image10.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image10.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row toggle-blog">
                            <div class="col-xl-4 col-sm-6 col-12 single-case-card" data-name="e-commerce">
                                <div class="card single-story single-industry-card">
                                    <div class="link-box">
                                        <a href="single-case-study.html"></a>
                                    </div>
                                    <div class="single-industry-card-overlay">
                                        <div class="single-industry-card-overlay-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image3.png" alt="iBOS">
                                        </div>
                                        <div class="single-industry-card-overlay-txt single-story-txt">
                                            <ul class="single-industry-tag-list">
                                                <li>Business Intellegience</li>
                                                <li>UI/UX Design</li>
                                                <li>E-commerce</li>
                                            </ul>
                                            <h2>
                                                <a href="#">
                                                    Fruits & Vegetables Delivery Mobile App
                                                </a>
                                            </h2>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/industry/white-arrow.svg" alt="iBOS">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-img">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/case-study/portfolio/image3.png" alt="iBOS">
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-6">
                                            <div class="single-story-txt">
                                                <h2>
                                                    <a href="#">
                                                        Fruits & Vegetables Delivery Mobile App
                                                    </a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="more-blog-btn-section">
                                    <button type="button" class="btn service-btn btn-seemore">
                                        <span>See More</span>
                                        <i class="fa fa-arrow-right" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btn service-btn btn-seeless">
                                        <span>Less See</span>
                                        <i class="fa fa-arrow-right" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- essential product section -->
   <section>
        <div class="essential-product">
            <div class="container">
                <div class="essentials">
                    <div class="row">
                        <div class="col-xl-4 col-md-12">
                            <div class="essential-heading">
                                <h2>Essential 8+ iBOS Products</h2>
                                <p>
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                                    Ipsum has been the industry's standard
                                </p>
                                <a class="btn hero-button" href="<?php echo get_option("siteurl"); ?>/category/ibos-products/">
                                    <span>EXPLORE</span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-8">
            <?php
                 $args = array(
                 'post_type'      => 'post',
                 'category_name'  => 'ibos-products',
                 'posts_per_page' => 4,
                 'facetwp' => true,
                );
                   $query = new WP_Query( $args );
            ?>
                            <div class="essential-items">
       <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                 <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                                <div class="single-item item-1">
                                    <div class="item-head">
                                        <div class="item-head-img">
                                            <img src="<?php echo get_post_custom_values('Icon')[0];?>" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <h4> <?php echo wp_trim_words( get_the_title(), 2, '' );?></h4>
                                        <p> <?php echo wp_trim_words( get_the_content(), 2, '' );?></p>
                                      <a href="#"> free</a>
                                   </div>
                           </div>
            <?php 
                endwhile;
                wp_reset_postdata(); 
                endif; 
            ?>
                            <!--
                                <div class="single-item item-2">
                                    <div class="item-head">
                                        <div class="item-head-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/icon/02.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <h4>iBOS BMS</h4>
                                        <p>Bill Management System</p>
                                        <a href="#"> free</a>
                                    </div>
                                </div>
                                <div class="single-item item-3">
                                    <div class="item-head">
                                        <div class="item-head-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/icon/03.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <h4>iBOS BMS</h4>
                                        <p>Bill Management System</p>
                                        <a href="#"> free</a>
                                    </div>
                                </div>
                                <div class="single-item item-4">
                                    <div class="item-head">
                                        <div class="item-head-img">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/icon/04.png" alt="iBOS">
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <h4>iBOS BMS</h4>
                                        <p>Bill Management System</p>
                                        <a href="#"> free</a>
                                    </div>
                                </div>
                            -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- get-in-touch section -->
    <section>
        <div class="get-in-touch-section">
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title">Get In Touch</h2>
                    <p class="section-para">Let us know what you want.</p>
                </div>
                <div class="get-in-touch-content">
                    <div class="row">
                        <div class="col-lg-7">
                            <form action="#" class="contact-form">
                                <div class="contact-form-content">
                                    <div class="row contact-form-inner-content">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control contact-input-form"
                                                    placeholder="Full Name">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control contact-input-form"
                                                    placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <p>
                                                Breifly tell about your project and your current goals. How can we help
                                                you?
                                            </p>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <textarea class="form-control contact-textarea-form scrollbar-remove"
                                                    placeholder="Message"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group btn-contact-section">
                                    <button type="submit" class="btn btn-story btn-contact">
                                        <span>send</span>
                                        <i class="fa fa-arrow-right" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="offset-lg-1 col-lg-4">
                            <div class="get-in-touch-section-txt">
                                <h2>Need Presentation? </h2>
                                <p>
                                    You like what we do, but you need to
                                    demonstrate your team as well. Easy!
                                    Directly download, print or share the
                                    link to a PDF with your colleagues
                                </p>
                                <div class="contact-sownload-file">
                                    <a href="assets/images/contact/docs.pdf" download>
                                        <span class="icon-circle">
                                            <i class="fa fa-arrow-down" aria-hidden="true"></i>
                                        </span>
                                        Company Profile.pdf (32mb)
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<?php get_footer();?>