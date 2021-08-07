<?php get_header(); ?>

        <!-- hero section -->
        <section>
            <div class="hero-section hero-another-section service-bg">
                <div class="container">
                    <div class="hero-content">
                        <h2>Our Services</h2>
                        <p class="hero-para">
                            We believe in serving our customers with the simplest, powerful, and secure business solutions.
                            Our priorities and focuses are transparency, flexibility, and diversity.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- services section -->
        <section>
            <div class="services service-core">
                <div class="container">
                    <div class="title-section">
                        <h2 class="section-title">What We Offer</h2>
                        <p class="section-para">
                            All we can think of is fixing up each of your problems with our solutions. The only thing we
                            count as our focal point of service is bringing in the finest ways to take your hassles down. We
                            have an expert team who will work till error-free, secured service is ensured.
                        </p>
                    </div>
                    <div class="service-section-content">
            <?php
                 $args = array(
                 'post_type'      => 'post',
                 'category_name'  => 'our-services',
                 'posts_per_page' => 6,
                 'facetwp' => true,
                );
                   $query = new WP_Query( $args );
            ?>
                        <div class="row">
                <?php if ( $query->have_posts() ) : while ( $query-> have_posts() ) : $query-> the_post(); ?>
                     <?php $post_thumbnail_id = get_post_thumbnail_id(); $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); ?>
                            <div class="col-lg-4 col-md-6">
                                <div class="single-service-card">
                                    <div class="link-box">
                                        <a href="<?php echo the_permalink()?>"></a>
                                    </div>
                                    <div class="single-service-card-img">
                                        <img src="<?php echo $post_thumbnail_url; ?>" alt="iBOS" />
                                    </div>
                                    <div class="single-service-txt">
                                        <h4>
                                            <a href="single-service.html"><?php echo wp_trim_words( get_the_title(), 3, '' );?></a>
                                        </h4>
                                        <p>
                                            <?php echo wp_trim_words( get_the_content(), 12, '' );?>
                                        </p>
                                    </div>
                                    <a href="single-service.html" class="service-card-arrow">
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
                                        <a href="single-service.html"></a>
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
                                            We develop mobile apps with an out of box thinking, by prioritizing efficiency
                                            and focusing on market strategy but without compromising your need.
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
                                        <a href="single-service.html"></a>
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
                                            If you’re looking for a door to knock for custom business solutions, theme
                                            design, and development, plugin solutions, then we’re here to get you all of it.
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
                                        <a href="single-service.html"></a>
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
                                            Bring your store online with the e-commerce solutions delivered by our expert
                                            team. We develop well-structured workflows ensuring higher traffic. So that your
                                            visitors turn into customers without compromised data security.
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
                                        <a href="single-service.html"></a>
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
                                            Our UI/UX Designers know how to bring your vision to life through appealing
                                            visuality, sensible information architecture, convenient usability, wireframing,
                                            interactive design.
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
                                        <a href="single-service.html"></a>
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
                                            Your objective, your need, your way and we’ll do the rest on the customization
                                            part whether it’s Odoo, salesforce, or anything of our own.
                                        </p>
                                    </div>
                                    <a href="custom-softwear.html" class="service-card-arrow">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon/arrow.svg" alt="iBOS" />
                                    </a>
                                </div>
                            </div>
                        -->

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- service-process -->
        <section>
            <div class="service-process">
                <div class="container">
                    <div class="service-process-content">
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <h3>Our Process</h3>
                                <span></span>
                                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist"
                                    aria-orientation="vertical">
                                    <a class="nav-link active" id="v-pills-business-tab" data-toggle="pill"
                                        href="#v-pills-business" role="tab" aria-controls="v-pills-business"
                                        aria-selected="true">
                                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                                        Business Analysis
                                    </a>
                                    <a class="nav-link" id="v-pills-development-tab" data-toggle="pill"
                                        href="#v-pills-development" role="tab" aria-controls="v-pills-development"
                                        aria-selected="false">
                                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                                        Development
                                    </a>
                                    <a class="nav-link" id="v-pills-testing-tab" data-toggle="pill" href="#v-pills-testing"
                                        role="tab" aria-controls="v-pills-testing" aria-selected="false">
                                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                                        Testing
                                    </a>
                                    <a class="nav-link" id="v-pills-deployment-tab" data-toggle="pill"
                                        href="#v-pills-deployment" role="tab" aria-controls="v-pills-deployment"
                                        aria-selected="false">
                                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                                        Deployment
                                    </a>
                                    <a class="nav-link" id="v-pills-design-tab" data-toggle="pill" href="#v-pills-design"
                                        role="tab" aria-controls="v-pills-design" aria-selected="false">
                                        <i class="fa fa-check-circle" aria-hidden="true"></i>
                                        Design
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <!-- tab one -->
                                    <div class="tab-pane fade show active" id="v-pills-business" role="tabpanel"
                                        aria-labelledby="v-pills-business-tab">
                                        <div class="service-process-slider owl-carousel owl-theme">
                                            <div class="item">
                                                <h3>01</h3>
                                                <h5>1 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>02</h3>
                                                <h5>2 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>03</h3>
                                                <h5>3 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                        </div>
                                        <div class="owl-control">
                                            <h1 class="my-owl-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                                            </h1>
                                            <h1 class="my-owl-next"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                                            </h1>

                                        </div>
                                    </div>
                                    <!-- tab two -->
                                    <div class="tab-pane fade" id="v-pills-development" role="tabpanel"
                                        aria-labelledby="v-pills-development-tab">
                                        <div class="service-process-slider owl-carousel owl-theme">
                                            <div class="item">
                                                <h3>01</h3>
                                                <h5>1 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>02</h3>
                                                <h5>2 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>03</h3>
                                                <h5>3 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                        </div>
                                        <div class="owl-control">
                                            <h1 class="my-owl-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                                            </h1>
                                            <h1 class="my-owl-next"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                                            </h1>

                                        </div>
                                    </div>
                                    <!-- tab three -->
                                    <div class="tab-pane fade show" id="v-pills-testing" role="tabpanel"
                                        aria-labelledby="v-pills-testing-tab">
                                        <div class="service-process-slider owl-carousel owl-theme">
                                            <div class="item">
                                                <h3>01</h3>
                                                <h5>1 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>02</h3>
                                                <h5>2 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>03</h3>
                                                <h5>3 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                        </div>
                                        <div class="owl-control">
                                            <h1 class="my-owl-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                                            </h1>
                                            <h1 class="my-owl-next"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                                            </h1>

                                        </div>
                                    </div>
                                    <!-- tab four -->
                                    <div class="tab-pane fade" id="v-pills-deployment" role="tabpanel"
                                        aria-labelledby="v-pills-deployment-tab">
                                        <div class="service-process-slider owl-carousel owl-theme">
                                            <div class="item">
                                                <h3>01</h3>
                                                <h5>1 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>02</h3>
                                                <h5>2 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>03</h3>
                                                <h5>3 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                        </div>
                                        <div class="owl-control">
                                            <h1 class="my-owl-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                                            </h1>
                                            <h1 class="my-owl-next"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                                            </h1>

                                        </div>
                                    </div>
                                    <!-- tab five -->
                                    <div class="tab-pane fade" id="v-pills-design" role="tabpanel"
                                        aria-labelledby="v-pills-design-tab">
                                        <div class="service-process-slider owl-carousel owl-theme">
                                            <div class="item">
                                                <h3>01</h3>
                                                <h5>1 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>02</h3>
                                                <h5>2 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                            <div class="item">
                                                <h3>03</h3>
                                                <h5>3 Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                    since the 1500s, when an unknown printer took a galley of type and
                                                    scrambled it to make a type specimen book.</h5>
                                            </div>
                                        </div>
                                        <div class="owl-control">
                                            <h1 class="my-owl-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i>
                                            </h1>
                                            <h1 class="my-owl-next"><i class="fa fa-chevron-right" aria-hidden="true"></i>
                                            </h1>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>

        <!-- service-why-choose section -->
        <section>
            <div class="pro-special-feature service-why-choose">
                <div class="container">
                    <div class="service-choose-txt service-why-choose-title">
                        <h2>Why Choose Our Services</h2>
                        <p class="service-choose-para">
                            We are fully focused to solve your business challenges. No matter the technology or
                            architecture.
                        </p>
                    </div>
                    <div class="service-why-choose-content">
                        <div class="row">
                            <div class="col-xl-6 order-xl-1 order-2">
                                <div class="service-choose-txt">
                                    <div class="service-choose-why-inner-title">
                                        <h2>Why Choose Our Services</h2>
                                        <p class="service-choose-para">
                                            We are fully focused to solve your business challenges. No matter the technology
                                            or
                                            architecture.
                                        </p>
                                    </div>
                                    <ul class="service-choose-list">
                                        <li>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/box.svg" alt="iBOS">
                                            </div>
                                            <div class="single-service-choose-txt">
                                                <h3>High experienced company</h3>
                                                <p>
                                                    Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry. Lorem Ipsum has been the industry's standard dummy
                                                </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/skill.svg" alt="iBOS">
                                            </div>
                                            <div class="single-service-choose-txt">
                                                <h3>Experienced and skilled team</h3>
                                                <p>
                                                    Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry.
                                                </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/box.svg" alt="iBOS">
                                            </div>
                                            <div class="single-service-choose-txt">
                                                <h3>Experienced and skilled team</h3>
                                                <p>
                                                    Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry.
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-6 order-xl-2 order-1">
                                <div class="single-service-choose-img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/05.png" alt="iBOS">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- partner section -->
        <section>
            <div class="partner-section" id="partner-section">
                <div class="container">
                    <div class="title-section">
                        <h2 class="section-title">Our Global Partners</h2>
                        <p class="section-para">
                            Lorem Ipsum is simply dummy text of the printing and typesetting
                            industry. Lorem Ipsum has been the industry's standard dummy
                            text ever since the 1500s.
                        </p>
                    </div>
                    <div class="partner-content">
                        <div class="single-partner">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partner/akij-jute.png" alt="iBOS" />
                        </div>
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
                    </div>
                </div>
            </div>
        </section>

        <!-- idea-ellipse section -->
        <section>
            <div class="idea-ellipse-section">
                <div class="idea-img">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/02.png" alt="iBOS">
                </div>
                <div class="ellipse ellipse-1"></div>
                <div class="ellipse ellipse-2"></div>
                <div class="ellipse ellipse-3"></div>
                <div class="container">
                    <div class="ideas-ellipse-content">
                        <h2>
                            We’d love to hear your ideas and what you’re working on!
                        </h2>
                        <p>
                            What does success look like for your and your company? Let’s find out together!
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