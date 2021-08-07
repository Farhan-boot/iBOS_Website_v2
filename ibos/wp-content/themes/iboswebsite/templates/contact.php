<?php 
    /*
      Template Name: Contact-Template
    */ 
?>

  <?php get_header(); ?>
        <!-- hero section -->
        <section>
            <div class="hero-section hero-another-section" style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/images/hero-section/hero-bg-img.png');">
                <div class="container">
                    <div class="hero-content">
                        <h2>Contact Us</h2>
                        <p class="hero-para">
                           Facing a problem? Well, we’re waiting here with the solution!
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- contact-info section -->
        <section>
            <div class="contact-info">
                <div class="container">
                    <div class="contact-info-content">
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="contact-info-txt">
                                    <h2>Get in touch</h2>
                                    <p>
                                        We’re just a click away from you!
                                    </p>
                                    <ul class="contact-info-list">
                                        <li class="single-contact-info-list">
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/message.png" alt="iBOS" />
                                            </div>
                                            <p>info@ibos.io</p>
                                        </li>
                                        <li class="single-contact-info-list">
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/mobile.png" alt="iBOS" />
                                            </div>
                                            <p>
                                                <a href="tel:+88001545485485">+88001545485485</a>
                                            </p>
                                        </li>
                                        <li class="single-contact-info-list">
                                            <div class="icon">
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/contact/location.png" alt="iBOS" />
                                            </div>
                                            <p>
                                                6/2, Kazi Nazrul Islam
                                                Road, Lalmatia, Dhaka - 1207
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-6">
                            <form action="#" class="contact-info-form">
                                 <?php the_content();?>
                             </form>
                                <!--
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Full name</label>
                                                    <input type="text" class="form-control contact-info-input">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="email" class="form-control contact-info-input">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <label>Share Your Problem Here!</label>
                                                    <textarea
                                                        class="form-control contact-info-textarea scrollbar-remove"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" class="btn btn-submit">
                                                    submit
                                                </button>
                                            </div>
                                        </div>
                                -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- contact-find section -->
        <section>
            <div class="contact-find">
                <div class="container">
                    <div class="contact-find-content">
                        <div class="row">
                            <div class="col-xl-6 order-xl-1 order-2">
                                <div class="single-contact-find">
                                    <iframe class="map"
                                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14607.060117181802!2d90.3642804!3d23.7557571!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc797f047ddc37606!2siBOS%20Limited!5e0!3m2!1sen!2sbd!4v1627382388000!5m2!1sen!2sbd"
                                        width="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>
                            </div>
                            <div class="offset-xl-1 col-xl-5 order-xl-2 order-1">
                                <div class="single-contact-find">
                                    <h2>How to find us?</h2>
                                    <p>
                                        From Mohammadpur Thana turn right. After reaching the building of  Marie Stopes, come to the first floor and we’ll be waiting for you there.
                                    </p>
                                    <a href="https://goo.gl/maps/LtADZ3n2jGshxkhJA" class="btn service-btn" target="_blank">
                                        Get Direction
                                        <i class="fa fa-arrow-right" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- idea-ellipse section -->
        <section>
            <div class="idea-ellipse-section">
                <div class="idea-img">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/others/01.png" alt="iBOS">
                </div>
                <div class="ellipse ellipse-1"></div>
                <div class="ellipse ellipse-2"></div>
                <div class="ellipse ellipse-3"></div>
                <div class="container">
                    <div class="ideas-ellipse-content">
                        <h2>
                            Still Didn’t Find Us?
                        </h2>
                        <p>
                            We are here to hear from you about your business purpose and help you with proper guidence.
                        </p>
                        <a href="tel:+88001545485485" class="btn hero-button">
                            Call Now
                            <i class="fa fa-arrow-right" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </section>

    <?php get_footer();?>