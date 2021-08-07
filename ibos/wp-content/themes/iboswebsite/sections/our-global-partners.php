     <?php 
         $ourclient = new WP_Query(array(
         'post_type' =>'Global_Partners',
         'posts_per_page' =>'-1'
        ));
     ?>
     <?php rewind_posts(); ?>

 <!-- partner section -->
    <section>
        <div class="partner-section" id="partner-section">
            <div class="container">
                <div class="title-section">
                    <h2 class="section-title">Our Global Partners</h2>
                    <p class="section-para">
                       We are trusted by some of the most remarkable companies of Bangladesh.
                    </p>
                </div>
                <div class="partner-content">
        <?php if(have_posts()) : while($ourclient->have_posts()) : $ourclient->the_post(); ?>
           <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                    <div class="single-partner">
                        <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS" />
                    </div>
         <?php endwhile; endif; ?>
                <!--
                    <div class="single-partner">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-poly-fiber.png" alt="iBOS" />
                    </div>
                    <div class="single-partner">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-ceramics.png" alt="iBOS" />
                    </div>
                    <div class="single-partner">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-textile.png" alt="iBOS" />
                    </div>
                    <div class="single-partner">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-agro-processing.png" alt="iBOS" />
                    </div>
                    <div class="single-partner">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-poly-fiber.png" alt="iBOS" />
                    </div>
                    <div class="single-partner">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-jute.png" alt="iBOS" />
                    </div>
                -->
                </div>
            </div>
        </div>
    </section>