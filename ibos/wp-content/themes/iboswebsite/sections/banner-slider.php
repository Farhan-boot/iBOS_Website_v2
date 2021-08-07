    <?php 
         $ourclient = new WP_Query(array(
         'post_type' =>'Main_Slider',
         'posts_per_page' =>'1'
        ));
     ?>
     <?php rewind_posts(); ?>


   <!-- Hero section -->
    <section>
        <?php if(have_posts()) : while($ourclient->have_posts()) : $ourclient->the_post(); ?>
            <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
        <div class="hero-section" style="background-image: url('<?php echo $post_thumbnail_url; ?>');">
            <div class="container">
                <div class="hero-content">
                    <h1><?php echo wp_trim_words( get_the_title(), 8, '...' );?></h1>
                    <p>
                        <?php echo wp_trim_words( get_the_content(), 49, '...' );?>
                    </p>
                    <a href="<?php echo get_option("siteurl"); ?>/contact/" class="btn hero-button">
                        <span>get started</span>
                        <i class="fa fa-arrow-right" aria-hidden="true"></i>
                    </a>

                    <div class="hero-scroll-down position-relative">
                        <a href="#partner-section">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/hero-section/down.png" alt="iBOS" />
                            Scroll Down
                        </a>

                    </div>
                </div>
                <div class="video-btn">
                    <a class="video-play-button mfp-iframe" href="https://www.youtube.com/watch?v=YrEPwYuQW2U">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/hero-section/play.png" alt="iBOS" />
                    </a>
                </div>
            </div>
        </div>
    <?php endwhile; endif; ?>
    </section>