<?php
/**
 * The template for displaying 404 pages (not found)
 */
?>
 <?php get_template_part('sections/components/archive_header'); ?>

  <!-- error section -->
    <section>
        <div class="error-section">
            <div class="container">
                <div class="error-section-content">
                    <div class="row">
                        <div class="col-xl-5">
                            <div class="error-code">
                                <h2>404</h2>
                            </div>
                        </div>
                        <div class="col-xl-7">
                            <div class="error-txt">
                                <h4>Oppss</h4>
                                <h3>Page Not Found</h3>
                                <div>
                                    <a href="<?php echo get_option("siteurl"); ?>">Go Back To Home</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


<?php get_footer(); ?>