<?php get_header() ?>

<!-- header section -->
<header class="header--home" style="background-image: url(<?php echo get_field( 'header_image', 6 ) ?>)">
  <div class="header__content">
    <h1 class="header__title">
      <?php echo get_field( 'header_title', 6 ) ?>
    </h1>
    <?php if ( get_field( 'header_description', 6 ) ) { ?>
      <p class="header__description">
        <?php the_field( 'header_description', 6 ) ?>
      </p>
    <?php } ?>
    <a class="header__link" href="#">
      <?php echo get_field( 'header_button', 6 ) ?>
    </a>
  </div>
</header>


<!-- description section -->
<section class="description">
  <div class="description__text">
    <h1>
      <?php echo get_field( 'description_title', 6 ) ?>
    </h1>
    <p>
      <?php echo get_field( 'description_text', 6 ) ?>
    </p>
  </div>

  <?php
  $image = get_field( 'description_image', 6 );
  if ( !empty( $image ) ) { ?>
    <img src="<?php echo $image['url'] ?>" class="description__image" alt="<?php echo $image['alt'] ?>" />
  <?php } ?>
</section>


<!-- Features section -->
<section class="features container-fluid">
  <h1>
    <?php echo get_field( 'features_title' ); ?>
  </h1>

  <?php $i = 2; ?>
  <?php while ( have_rows( 'features', 6 ) ) { the_row(); ?>
    <div class="features__container row">
      <?php
      // variables
      $image = get_sub_field( 'feature_image', 6 );
      $title = get_sub_field( 'feature_title', 6 );
      $text  = get_sub_field( 'feature_text',  6 );

      if ( $i % 2 == 0 ) { ?>
        <div class="features__text  col-12 col-sm-12 col-md-6 col-lg-5 col-xl-5">
          <h2>
            <?php echo $title; ?>
          </h2>
          <p>
            <?php echo $text; ?>
          </p>
        </div>
        <div class="features__media col-12 col-sm-12 col-md-6 col-lg-7 col-xl-7">
          <div class="features__overlay features__overlay--inverse"></div>
          <img class="features__image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
        </div>
        <?php ++$i; ?>
      <?php } else { ?> <!-- end if -->
        <div class="features__media features__media--inverse col-12 col-sm-12 col-md-6 col-lg-7 col-xl-7">
          <div class="features__overlay"></div>
          <img class="features__image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
        </div>
        <div class="features__text  features__text--inverse  col-12 col-sm-12 col-md-6 col-lg-5 col-xl-5">
          <h2>
            <?php echo $title; ?>
          </h2>
          <p>
            <?php echo $text; ?>
          </p>
        </div>
        <?php ++$i; ?>
      <?php } ?> <!-- end else -->
    </div>
  <?php } ?> <!-- end while -->
</section>

<!-- artGallery section -->
<section class="artGallery">

</section>

<!-- getInvolved section -->
<section class="getInvolved">

</section>

<!-- <?php // get_sidebar() ?> -->

<?php get_footer() ?>
