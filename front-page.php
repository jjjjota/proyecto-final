<?php get_header() ?>

<!-- header section -->
<header class="header--home" style="background-image: url(<?php echo get_field( 'header_image', 6 ) ?>)">
  <div class="header__content">
    <h1 class="header__title">
      <?php echo get_field( 'header_title', 6 ) ?>
    </h1>
    <p class="header__description">
      <?php echo get_field( 'header_description', 6 ) ?>
    </p>
    <a class="header__link" href="#">
      <?php echo get_field( 'header_button', 6 ) ?>
    </a>

  </div>
</header>


<!-- description section -->
<section class="description">

</section>


<!-- mainFeatures section -->
<section class="mainFeatures">

</section>

<!-- features section -->
<section class="features">

</section>

<!-- artGallery section -->
<section class="artGallery">

</section>

<!-- getInvolved section -->
<section class="getInvolved">

</section>

<!-- <?php // get_sidebar() ?> -->

<?php get_footer() ?>
