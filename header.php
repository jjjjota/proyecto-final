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
  <a href="<?php echo home_url() ?>">
    <img class="navbar-brand" src="<?php echo get_field( 'logo' )['url'] ?>" alt="krita logo">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <i class="fas fa-bars"></i>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Download</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://docs.krita.org/">Documentation</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Participate
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Art Gallery</a>
          <a class="dropdown-item" href="#">Get Involved</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Donate!</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Shop</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">News</a>
      </li>
    </ul>
  </div>
</nav>
