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

<!-- Navigation bar -->
<nav class="navbar navbar-dark navbar--krita navbar-expand-md">
  <?php if ( get_field( 'logo', 'options' ) ) { ?>
    <a href="<?php echo home_url() ?>">
      <img class="navbar-brand" src="<?php the_field( 'logo', 'options' ) ?>" alt="krita logo" />
    </a>
  <?php } ?>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <i class="fas fa-bars"></i>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">

    <?php
    wp_nav_menu( array(
      'theme_location' => 'header-menu',
      'menu_class'     => 'navbar-nav ml-auto',
      'container'      => false,
      'items_wrap'     => '<ul id="%1$s" class="%2$s">%3$s</ul>',
      'depth'          => 2,
    ) );
    ?>
  </div>
</nav>
