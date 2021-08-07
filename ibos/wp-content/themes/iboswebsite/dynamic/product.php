<?php get_header(); ?>

    <!-- hero section -->
    <section>
        <div class="hero-section hero-another-section product-bg">
            <div class="container">
                <div class="hero-content">
                    <h2>Find Our Products</h2>
                    <p class="hero-para">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Semper aliquam maecenas nisl viverra
                        cum feugiat in duis in. Scelerisque adipiscing vulputate luctus suspendisse purus. Cursus nulla
                        nulla risus nulla purus aliquet. Tristique enim vitae arcu ultrices duis quam faucibus.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- product-top-info section -->
    <section>
        <div class="product-top-info-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-4">
                        <div class="single-product-top-info">
                            <div class="single-product-top-info-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/teamwork.png" alt="iBOS" />
                            </div>
                            <p class="mini-info">Large Companies </p>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-4">
                        <div class="single-product-top-info">
                            <div class="single-product-top-info-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/accounting.png" alt="iBOS" />
                            </div>
                            <p class="mini-info">Medium Businesses </p>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-4">
                        <div class="single-product-top-info">
                            <div class="single-product-top-info-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/advertisement.png" alt="iBOS" />
                            </div>
                            <p class="mini-info">Marketing Softwares </p>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-4">
                        <div class="single-product-top-info">
                            <div class="single-product-top-info-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/online-shop.png" alt="iBOS" />
                            </div>
                            <p class="mini-info">Samll Enterprize </p>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-4">
                        <div class="single-product-top-info">
                            <div class="single-product-top-info-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/pie-chart.png" alt="iBOS" />
                            </div>
                            <p class="mini-info">Business Management </p>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-4">
                        <div class="single-product-top-info">
                            <div class="single-product-top-info-img">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/target.png" alt="iBOS" />
                            </div>
                            <p class="mini-info">Business Management </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- products information section -->
    <section>
        <div class="product-information-section">
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title">Products That We Are Proud Of</h2>
                    <p class="section-para">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the industry's standard dummy text ever since the 1500s.
                    </p>
                </div>
                <div class="product-information-content">
                    <div class="row">
<?php if (have_posts()) : ?>
       <?php $post = $posts[0]; // Hack. Set $post so that the_date() works. ?>
       <?php /* If this is a category archive */ if (is_category()) { ?>
<?php 
  global $wp;
  $current_url = home_url(add_query_arg(array(), $wp->request));
  $rev_url= strrev($current_url);
  $new_var = substr($rev_url, 0, strpos($rev_url, "/"));
  $category_url= strrev($new_var);
  //echo $category_url;
?>

                          <?php /* If this is a daily archive */ } elseif (is_day()) { ?>
                          <h2 class="pagetitle">Archive for <?php the_time('F jS, Y'); ?></h2>

                          <?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
                          <h2 class="pagetitle">Archive for <?php the_time('F, Y'); ?></h2>

                          <?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
                          <h2 class="pagetitle">Archive for <?php the_time('Y'); ?></h2>

                          <?php /* If this is an author archive */ } elseif (is_author()) { ?>
                          <h2 class="pagetitle">Author Archive</h2>

                          <?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
                          <h2 class="pagetitle">Blog Archives</h2>
                          <?php } ?>



                    
  <?php while(have_posts()) : the_post(); ?>

                      <?php
                          $mycontent = $post->post_content; // wordpress users only
                          $word = str_word_count(strip_tags($mycontent));
                          $m = floor($word / 200);
                          $s = floor($word % 200 / (200 / 60));
                          $est = $m . ' MIN' . ($m == 1 ? '' : '') . ', ' . $s . ' SEC' . ($s == 1 ? '' : '');
                      ?>
                        
            
                    <div class="col-12">
                            <div class="single-product-information product-item-bg0">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-product-information-txt">
                                            <div class="inner-box-info">
                                                <h2> <?php echo wp_trim_words(get_the_title(), 4, '...' );?></h2>
                                                <p> <?php echo wp_trim_words(get_the_content(), 10, '...' );?></p>
                                                <div class="d-flex align-items-center">
                                                    <a class="details-btn" href="<?php the_permalink(); ?>">
                                                        Details
                                                    </a>
                                                    <a class="play-btn mfp-iframe"
                                                        href="<?php echo get_post_custom_values('Video')[0];?>">
                                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/play.png" alt="iBOS" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-product-information-image">
                                            <img src="<?php echo get_the_post_thumbnail_url() ?>" alt="iBOS" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                                            

 <?php endwhile; ?>





            
     
              <?php 
                previous_posts_link();
                 next_posts_link();
             ?>

             <?php else : ?>
                        <h2 class="center" style="min-height: 170px">Not Found</h2>
            <?php endif; ?>
                     
                  </div>
                </div>
            </div>
        </div>
    </section>


                    <!--
                        <div class="col-12">
                            <div class="single-product-information product-item-bg1">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-product-information-txt">
                                            <div class="inner-box-info">
                                                <h2>iBOS Billing System</h2>
                                                <p>For Any Small Business</p>
                                                <div class="d-flex align-items-center">
                                                    <a class="details-btn" href="single-product.html">
                                                        Details
                                                    </a>
                                                    <a class="play-btn mfp-iframe"
                                                        href="https://www.youtube.com/watch?v=YrEPwYuQW2U">
                                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/play.png" alt="iBOS" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-product-information-image">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/bms.png" alt="iBOS" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="single-product-information product-item-bg2">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-product-information-txt">
                                            <div class="inner-box-info">
                                                <h2>iBOS RTM</h2>
                                                <p>Released To Manufacturing</p>
                                                <div class="d-flex align-items-center">
                                                    <a class="details-btn" href="single-product.html">
                                                        Details
                                                    </a>
                                                    <a class="play-btn mfp-iframe"
                                                        href="https://www.youtube.com/watch?v=YrEPwYuQW2U">
                                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/play.png" alt="iBOS" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-product-information-image">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/rtm.png" alt="iBOS" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="single-product-information product-item-bg3">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-product-information-txt">
                                            <div class="inner-box-info">
                                                <h2>iBOS ERP</h2>
                                                <p>For Easier Business Management</p>
                                                <div class="d-flex align-items-center">
                                                    <a class="details-btn" href="single-product.html">
                                                        Details
                                                    </a>
                                                    <a class="play-btn mfp-iframe"
                                                        href="https://www.youtube.com/watch?v=YrEPwYuQW2U">
                                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/play.png" alt="iBOS" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-product-information-image">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/erp.png" alt="iBOS" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="single-product-information product-item-bg3">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-product-information-txt">
                                            <div class="inner-box-info">
                                                <h2>iBOS VAT</h2>
                                                <p>VAT Management Software</p>
                                                <div class="d-flex align-items-center">
                                                    <a class="details-btn" href="single-product.html">
                                                        Details
                                                    </a>
                                                    <a class="play-btn mfp-iframe"
                                                        href="https://www.youtube.com/watch?v=YrEPwYuQW2U">
                                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/play.png" alt="iBOS" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-product-information-image">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/vat.png" alt="iBOS" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="single-product-information product-item-bg3">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-product-information-txt">
                                            <div class="inner-box-info">
                                                <h2>iMarine</h2>
                                                <p>For Shipping ERP Software</p>
                                                <div class="d-flex align-items-center">
                                                    <a class="details-btn" href="single-product.html">
                                                        Details
                                                    </a>
                                                    <a class="play-btn mfp-iframe"
                                                        href="https://www.youtube.com/watch?v=YrEPwYuQW2U">
                                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/play.png" alt="iBOS" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-product-information-image">
                                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/imarine.png" alt="iBOS" />
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
        </div>
    </section>

    <!-- product-video section -->
    <section>
        <div class="product-video-section">
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title">See How Our Software Makes Your Business Easy</h2>
                    <p class="section-para">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                        the industry's standard dummy text ever since the 1500s.
                    </p>
                </div>
                <div class="product-video-section-content">
                    <div class="product-video-section-img">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/01.png" alt="iBOS">
                        <div class="product-video-section-img-overlay">
                            <a class="play-btn mfp-iframe" href="https://www.youtube.com/watch?v=YrEPwYuQW2U">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/product/play2.png" alt="iBOS">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- why-product-choose section -->
    <section>
        <div class="why-product-choose">
            <div class="why-product-choose-content">
                <div class="row">
                    <div class="col-xl-6">
                        <div class="idea-ellipse-section">
                            <div class="ellipse ellipse-1"></div>
                            <div class="ellipse ellipse-2"></div>
                            <div class="ellipse ellipse-3"></div>
                            <div class="container">
                                <div class="ideas-ellipse-content">
                                    <h2>
                                        Choose the product that best fits your need
                                    </h2>
                                    <p>
                                        You are a product of your environment. So choose the environment that will best
                                        develop you
                                        toward your objective. A market is never saturated with a good product, but it
                                        is very quickly
                                        saturated with a bad one.
                                    </p>
                                    <a href="<?php echo get_option("siteurl"); ?>/contact/" class="btn hero-button">
                                        Contact us
                                        <i class="fa fa-arrow-right" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="single-why-choose-feature">
                            <div class="single-why-choose-feature-accordion">
                                <div class="accordion">
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title">
                                                    <a role="button" data-toggle="collapse" href="#collapseOne"
                                                        aria-expanded="true" aria-controls="collapseOne">
                                                        <span>
                                                            Learge Business
                                                        </span>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" data-parent="#accordion"
                                                class="panel-collapse collapse show" role="tabpanel"
                                                aria-labelledby="headingOne">
                                                <div class="panel-body">
                                                    <p class="welcome-para">
                                                        Nam nisi elementum, ac morbi eleifend sed egestas nec
                                                        suspendisse nunc, habitasse diam rhoncus egestas. Nam nisi
                                                        elementum, ac morbi eleifend sed egestas nec suspendisse
                                                        habitasse diam rhoncus egestas.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title">
                                                    <a role="button" data-toggle="collapse" href="#collapseTwo"
                                                        aria-expanded="true" aria-controls="collapseTwo">
                                                        <span>
                                                            Medium Enterprize
                                                        </span>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseTwo" data-parent="#accordion"
                                                class="panel-collapse collapse" role="tabpanel"
                                                aria-labelledby="headingTwo">
                                                <div class="panel-body">
                                                    <p class="welcome-para">
                                                        Nam nisi elementum, ac morbi eleifend sed egestas nec
                                                        suspendisse nunc, habitasse diam rhoncus egestas. Nam nisi
                                                        elementum, ac morbi eleifend sed egestas nec suspendisse
                                                        habitasse diam rhoncus egestas.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab">
                                                <h4 class="panel-title">
                                                    <a role="button" data-toggle="collapse" href="#collapseThree"
                                                        aria-expanded="true" aria-controls="collapseThree">
                                                        <span>
                                                            Small Business
                                                        </span>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" data-parent="#accordion"
                                                class="panel-collapse collapse" role="tabpanel"
                                                aria-labelledby="headingThree">
                                                <div class="panel-body">
                                                    <p class="welcome-para">
                                                        Nam nisi elementum, ac morbi eleifend sed egestas nec
                                                        suspendisse nunc, habitasse diam rhoncus egestas. Nam nisi
                                                        elementum, ac morbi eleifend sed egestas nec suspendisse
                                                        habitasse diam rhoncus egestas.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
        <div class="stories-section single-service-stories">
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
                                    <a href="<?php echo the_permalink()?>"></a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-img" style="height: 170px;">
                                            <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS"  style="width: 100%;">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-6">
                                        <div class="single-story-txt">
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


                 <!--
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="card single-story">
                                <div class="link-box">
                                    <a href="single-blog.html"></a>
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
                                                <a href="single-blog.html">
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
                                    <a href="single-blog.html"></a>
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
                                                <a href="single-blog.html">
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
                                    <a href="single-blog.html"></a>
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
                                                <a href="single-blog.html">
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

<?php get_footer();?>