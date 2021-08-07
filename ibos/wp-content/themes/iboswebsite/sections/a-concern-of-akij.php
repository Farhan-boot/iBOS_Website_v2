    <?php 
         $ourclient = new WP_Query(array(
         'post_type' =>'A_Concern_Of_Akij',
         'posts_per_page' =>'1'
        ));
     ?>
     <?php rewind_posts(); ?>
    <!-- about section -->
    <section>
    <?php if(have_posts()) : while($ourclient->have_posts()) : $ourclient->the_post(); ?>
        <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
        <div class="about">
            <div class="container">
                <div class="about-content">
                    <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS">
                    <h2>A Concern of Akij</h2>
                    <h4>
                       <?php echo wp_trim_words( get_the_title(), 20, '' );?>
                    </h4>
                    <p>
                        <?php echo wp_trim_words( get_the_content(), 50, '' );?>
                    </p>
                </div>
            </div>
        </div>
     <?php endwhile; endif; ?>
    </section>