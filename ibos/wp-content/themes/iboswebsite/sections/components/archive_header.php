<?php
    global $uni_pro;
    $logo_white = $uni_pro['media-logo-white']['url'];
    $logo_blue = $uni_pro['media-logo-blue']['url'];
    $favicon = $uni_pro['media-favicon']['url'];
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
    <link rel="shortcut icon" type="image/icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/logo/ibosfavicon.svg" />
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
     <?php wp_head(); ?>
</head>

<body>

    <!-- header section start -->
    <header id="header" class="header header-white">
        <div class="container-fluid">
            <div class="header-content">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo">
                            <h1>
                                <a href="<?php echo get_option("siteurl"); ?>">
                                    <img class="default-logo" src="<?php echo $logo_white; ?>" alt="iBOS">
                                    <img class="blue-logo" src="<?php echo $logo_blue; ?>" alt="iBOS">
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
                        </nav><!-- .nav-menu -->
                    </div>
                </div>
            </div>
        </div>
    </header>