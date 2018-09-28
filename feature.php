<div class="features__container row">
  <?php
  // variables
  $image = get_sub_field( 'feature_image' );
  $title = get_sub_field( 'feature_title' );
  $text  = get_sub_field( 'feature_text' );

  if ( $i % 2 == 0 ) { ?>
    <div class="features__text  col-12 col-sm-12 col-md-6 col-lg-5 col-xl-5">
      <h2 class="hidden">
        <?php echo $title; ?>
      </h2>
      <p class="hidden">
        <?php echo $text; ?>
      </p>
    </div>
    <div class="features__media col-12 col-sm-12 col-md-6 col-lg-7 col-xl-7">
      <div class="features__overlay features__overlay--inverse"></div>
      <img class="features__image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
    </div>
  <?php } else { ?>
    <div class="features__media features__media--inverse col-12 col-sm-12 col-md-6 col-lg-7 col-xl-7">
      <div class="features__overlay"></div>
      <img class="features__image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
    </div>
    <div class="features__text  features__text--inverse  col-12 col-sm-12 col-md-6 col-lg-5 col-xl-5">
      <h2 class="hidden">
        <?php echo $title; ?>
      </h2>
      <p class="hidden">
        <?php echo $text; ?>
      </p>
    </div>
  <?php } ?>
</div>
