<?php
    global $uni_pro;
    $logo_white = $uni_pro['media-logo-white']['url'];
    $logo_blue = $uni_pro['media-logo-blue']['url'];
    $favicon = $uni_pro['media-favicon']['url'];
    //$phone = $uni_pro['opt-number'];
    //$social_facebook = $uni_pro['opt-social-text-facebook'];
    //$social_youtube = $uni_pro['opt-social-text-youtube'];
    //$social_twitter = $uni_pro['opt-social-text-twitter'];
    // $social_gplus = $uni_pro['opt-social-text-gplus'];
    // $social_skype = $uni_pro['opt-social-text-skype'];
    // $social_flickr = $uni_pro['opt-social-text-flickr'];
    // $social_linkedin = $uni_pro['opt-social-text-linkedin'];
    // $social_wordpress = $uni_pro['opt-social-text-wordpress'];
    // $social_vimeo = $uni_pro['opt-social-text-vimeo'];  
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- All meta tag -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- title -->
    <title>iBOS</title>

    <link rel=icon href="<?php echo $favicon ?>">
    <!-- all css link -->
    <link rel="shortcut icon" type="image/icon" href="assets/images/logo/ibosfavicon.svg" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick-theme.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/aos.css" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/responsive.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">

 <?php wp_head(); ?>
</head>



<body>

    <!-- header section start -->
    <header id="header" class="header">
        <div class="container-fluid">
            <div class="header-content">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <h1>
                                <a href="<?php echo get_option("siteurl"); ?>">
                                    <img class="default-logo" src="<?php  echo $logo_white ?>" alt="iBOS">
                                    <img class="blue-logo" src="<?php  echo $logo_blue ?>" alt="iBOS">
                                </a>
                            </h1>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <nav class="nav-menu nav-menu-content">

                          <?php
                                $args = array(
                                'theme_location' => 'top-bar',
                                'depth'          => 10,
                                'container'      => false,
                                'menu_class'     => 'parent-ul',
                                'walker'         => new Bootstrap_Walker_Nav_Menu()
                                        );
                                wp_nav_menu($args);                      
                            ?>

                            <li><a href="<?php echo get_option("siteurl"); ?>/contact" class="btn btn-contact">CONTACT US</a></li>

                        <!--
                            <ul class="parent-ul">
                                <li class="active"><a href="index.html">Home</a></li>
                                <li class="drop-down">
                                    <a href="#">
                                        Products
                                        <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="bill-management.html">
                                                Bill Management System
                                            </a>
                                        </li>
                                        <li>
                                            <a href="sme.html">
                                                Small & Medium-Sized Enterprises
                                            </a>
                                        </li>
                                        <li>
                                            <a href="erp.html">
                                                Enterprise Resource Planning
                                            </a>
                                        </li>
                                        <li>
                                            <a href="rtm.html">
                                                Released To Manufacturing
                                            </a>
                                        </li>
                                        <li>
                                            <a href="vat.html">
                                                Value Added Tax
                                            </a>
                                        </li>
                                        <li>
                                            <a href="hcm.html">
                                                HR Management System
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="drop-down">
                                    <a href="#">
                                        Services
                                        <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="web-development.html">
                                                Web Development
                                            </a>
                                        </li>
                                        <li>
                                            <a href="mobile-development.html">
                                                Mobile App Development
                                            </a>
                                        </li>
                                        <li>
                                            <a href="e-commerce.html">
                                                E-Commerce Solution
                                            </a>
                                        </li>
                                        <li>
                                            <a href="uiux.html">
                                                UX/UI Design
                                            </a>
                                        </li>
                                        <li>
                                            <a href="custom-business.html">
                                                Custom Business Solution
                                            </a>
                                        </li>
                                        <li>
                                            <a href="custom-softwear.html">
                                                Custom Software Development
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="drop-down">
                                    <a href="#">
                                        Industries
                                        <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    </a>
                                    <ul>
                                        <li><a href="#">Demo One</a></li>
                                        <li><a href="#">Demo Two</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">case study</a></li>
                                <li class="drop-down">
                                    <a href="#">
                                        Company
                                        <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    </a>
                                    <ul>
                                        <li><a href="#">Demo One</a></li>
                                        <li><a href="#">Demo Two</a></li>
                                    </ul>
                                </li>
                                <li><a href="#" class="btn btn-contact">CONTACT US</a></li>
                            </ul>
                        -->



                        </nav><!-- .nav-menu -->
                    </div>
                </div>
            </div>
        </div>
    </header>