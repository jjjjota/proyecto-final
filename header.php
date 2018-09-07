<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset') ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<?php get_template_part('_includes/iOS', 'icons') ?>
	<?php wp_head() ?>
</head>
<body>

<?php if ( has_nav_menu( 'header-menu' ) ) { ?>
	<?php wp_nav_menu( array( 'theme_location' => 'header-menu', 'container_class' => 'header_menu' ) ); ?>
<?php } ?>

<!-- Navigation bar -->
<!-- <nav class="navbar navbar-dark navbar-expand-lg">
  <a href="<?php //home_url() ?>">
    <img class="navbar-brand" src="<?php //get_field('logo', 'options')['url'] ?>" alt="krita logo">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <?php
    // wp_nav_menu( array(
    //   'theme_location' => 'header-nav',
    //   'container'      => false,
    //   'menu_class'     => 'navbar-nav ml-auto',
    //   'fallback_cb'    => '__return_false',
    //   'items_wrap'     => '<ul id="%1$s" class="%2$s">%3$s</ul>',
    //   'depth'          => 2,
    //   'walker'         => new bootstrap_4_walker_nav_menu()
    // ) );
    ?>

  </div>
</nav> -->
