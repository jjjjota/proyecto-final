<?php get_header() ?>

<!-- Header section -->
<header class="header--home" style="background-image: url(<?php echo get_field( 'header_image', 6 ) ?>)">
  <div class="header__content">
    <h1 class="header__title">
      <?php echo get_field( 'header_title', 6 ) ?>
    </h1>
    <?php if ( get_field( 'header_text', 6 ) ) { ?>
      <p class="header__description">
        <?php the_field( 'header_text', 6 ) ?>
      </p>
    <?php } ?>
    <a class="header__link" href="<?php echo get_field( 'header_link', 6 ) ?>">
      Download now!
    </a>
  </div>
</header>

<!-- Description section -->
<section class="description">
  <div class="description__text">
    <h1 class="hidden">
      <?php echo get_field( 'description_title', 6 ) ?>
    </h1>
    <p class="hidden">
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
<section class="features">
  <h1 class="hidden">
    <?php echo get_field( 'features_title' ); ?>
  </h1>

  <div class="container-fluid">
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
          <?php ++$i; ?>
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
          <?php ++$i; ?>
        <?php } ?>
      </div>
    <?php } ?> <!-- end while -->
  </div>

  <?php
  $link = get_field( 'features_link', 6 );

  if ( $link ) { ?>
    <a class="features__link drawBorder" href="<?php echo $link ?>">
      See more here!
    </a>
  <?php } ?>
</section>

<!-- Art Preview Carousel section -->
<?php
$title  = get_field( 'carousel_title', 6 );
$images = get_field( 'carousel_images', 6 );
$link   = get_field( 'carousel_link', 6 );

// Si hay imágenes, se crea el section
if ( $images ) { ?>
  <section class="artPreview">
    <?php if ( $title ) { ?>
      <h1 class="hidden">
        <?php echo $title ?>
      </h1>
    <?php } ?>

    <div id="carouselExampleIndicators" class="carousel slide artPreview__carousel" data-ride="carousel" data-interval="3500">

      <div class="carousel-inner">
        <?php
        $initial = true;
        foreach( $images as $image ) {
          if ( $initial ) { ?>
            <div class="carousel-item active">
              <img class="d-block w-100" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
              <p class="artPreview__caption">
                <?php echo $image['caption'] ?>
              </p>
            </div>
          <?php $initial = false; ?>
          <?php } else { ?>
            <div class="carousel-item">
              <img class="d-block w-100" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>">
              <p class="artPreview__caption">
                <?php echo $image['caption'] ?>
              </p>
            </div>
          <?php } ?> <!-- end if -->
        <?php } ?> <!-- end foreach -->
      </div>
    </div>

    <?php if ( $link ) { ?>
      <a class="artPreview__link" href="<?php echo $link ?>">
        <span class="artPreview__linkText">See more</span>
        <i class="artPreview__linkIcon fas fa-plus"></i>
      </a>
    <?php } ?>

  </section>
<?php } ?>

<!-- Join section -->
<section class="join">
  <h1 class="hidden">
    <?php echo get_field( 'join_title', 6 ) ?>
  </h1>
  <div class="join__container">
    <!-- Icons -->
    <div class="join__buttons">
      <button class="join__button join__button--started active">
        <i class="fas fa-book"></i>
      </button>
      <button class="join__button join__button--connected">
        <i class="fas fa-comments"></i>
      </button>
      <button class="join__button join__button--involved">
        <i class="fas fa-code-branch"></i>
      </button>
    </div>

    <!-- Get Started -->
    <div class="get get--started active container-fluid">
      <div class="row">
        <div class="get__grid col-12 col-sm-12 col-md-7 col-lg-7 col-xl-6">
          <?php
          $title = get_field( 'getstarted_title', 6 );
          $text  = get_field( 'getstarted_text', 6 );

          if ( $title ) { ?>
            <h2>
              <?php echo $title ?>
            </h2>
          <?php }
          if ( $text ) { ?>
            <p>
              <?php echo $text ?>
            </p>
          <?php } ?>
        </div>
        <div class="get__grid col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 offset-md-1 offset-lg-1 offset-xl-2">
          <?php
          $linkDownloads     = get_field( 'getstarted_link_downloads', 6 );
          $linkDocumentation = get_field( 'getstarted_link_documentation', 6 );

          if ( $linkDownloads ) { ?>
            <a class="get__link"href="<?php echo $linkDownloads ?>">
              Download
            </a>
          <?php }
          if ( $linkDocumentation ) { ?>
            <a class="get__link"href="<?php echo $linkDocumentation ?>">
              Documentation
            </a>
          <?php } ?>
        </div>
      </div>
    </div>

    <!-- Get Started -->
    <div class="get get--connected container-fluid">
      <div class="row">
        <div class="get__grid col-12 col-sm-12 col-md-7 col-lg-7 col-xl-6">
          <?php
          $title = get_field( 'getconnected_title', 6 );
          $text  = get_field( 'getconnected_text', 6 );

          if ( $title ) { ?>
            <h2>
              <?php echo $title ?>
            </h2>
          <?php }
          if ( $text ) { ?>
            <p>
              <?php echo $text ?>
            </p>
          <?php } ?>
        </div>
        <div class="get__grid get__grid--connected col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 offset-md-1 offset-lg-1 offset-xl-2">
          <?php
          $networks = get_field( 'social_networks', 6 );

          if ( $networks ) {
            foreach( $networks as $network ) {
              if ( $network ) { ?>
                <a class="get__link get__link--connected" href="<?php echo $network ?>">
                  <?php if       ( $network == $networks['devianart'] ) { ?>
                    <i class="fab fa-deviantart"></i>
                  <?php } elseif ( $network == $networks['facebook'] ) { ?>
                    <i class="fab fa-facebook-f"></i>
                  <?php } elseif ( $network == $networks['twitter'] ) { ?>
                    <i class="fab fa-twitter"></i>
                  <?php } elseif ( $network == $networks['googleplus'] ) { ?>
                    <i class="fab fa-google-plus-g"></i>
                  <?php } elseif ( $network == $networks['vkontakte'] ) { ?>
                    <i class="fab fa-vk"></i>
                  <?php } elseif ( $network == $networks['reddit'] ) { ?>
                    <i class="fab fa-reddit"></i>
                  <?php } elseif ( $network == $networks['mastodonart'] ) { ?>
                    <i class="fab fa-mastodon"></i>
                  <?php } ?>
                </a>
              <?php } ?>
            <?php } ?>
          <?php } ?>
        </div>
      </div>
    </div>

    <!-- Get Involved -->
    <div class="get get--involved container-fluid">
      <div class="row">
        <div class="get__grid col-12 col-sm-12 col-md-7 col-lg-7 col-xl-6">
          <?php
          $title = get_field( 'getinvolved_title', 6 );
          $text  = get_field( 'getinvolved_text', 6 );

          if ( $title ) { ?>
            <h2>
              <?php echo $title ?>
            </h2>
          <?php }
          if ( $text ) { ?>
            <p>
              <?php echo $text ?>
            </p>
          <?php } ?>
        </div>
        <div class="get__grid col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 offset-md-1 offset-lg-1 offset-xl-2">
          <?php
          $linkContributors = get_field( 'getinvolved_link_contributors', 6 );

          if ( $linkContributors ) { ?>
            <a class="get__link"href="<?php echo $linkContributors ?>">
              Contribute
            </a>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- <?php // get_sidebar() ?> -->

<?php get_footer() ?>
