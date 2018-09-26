<?php get_header() ?>

<!-- Header section -->
<header class="header--home" style="background-image: url(<?php echo get_field( 'header_image'  ) ?>)">
  <div class="header__content">
    <h1 class="header__title">
      <?php echo get_field( 'header_title'  ) ?>
    </h1>
    <?php if ( get_field( 'header_text'  ) ) { ?>
      <p class="header__description">
        <?php the_field( 'header_text'  ) ?>
      </p>
    <?php } ?>
    <a class="header__link" href="<?php echo get_field( 'header_link'  ) ?>">
      Download now!
    </a>
  </div>
</header>

<!-- Description section -->
<?php if ( get_field( 'description_show' ) ) { ?>
  <section class="description">
    <h1 class="hidden">
      <?php the_field( 'description_title'  ) ?>
    </h1>
    <p class="center--600 hidden">
      <?php the_field( 'description_text'  ) ?>
    </p>

    <?php
    $image = get_field( 'description_image'  );
    if ( !empty( $image ) ) { ?>
      <img src="<?php echo $image['url'] ?>" class="description__image" alt="<?php echo $image['alt'] ?>" />
    <?php } ?>
  </section>
<?php } ?>

<!-- Features section -->
<?php if ( get_field( 'features_show' )) { ?>
  <section class="features">
    <h1 class="hidden">
      <?php echo get_field( 'features_title' ); ?>
    </h1>

    <div class="container-fluid">
      <?php
      $i = 2;

      while ( have_rows( 'features'  ) ) {
        the_row();

        // Template part
        include( locate_template( 'feature.php' ) );
        ++$i;
      } ?> <!-- end while -->
    </div>

    <?php
    $link = get_field( 'features_link'  );

    if ( $link ) { ?>
      <a class="features__link" href="<?php echo $link['url'] ?>">
        <?php echo $link['title'] ?>
      </a>
    <?php } ?>
  </section>
<?php } ?>

<!-- Art Preview Carousel section -->
<?php if ( get_field( 'carousel_show' ) ) { ?>
  <?php
  $title  = get_field( 'carousel_title'  );
  $images = get_field( 'carousel_images'  );
  $link   = get_field( 'carousel_link'  );
  ?>

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
<?php if ( get_field( 'join_show' ) ) { ?>
  <section class="join">
    <h1 class="hidden">
      <?php the_field( 'join_title'  ) ?>
    </h1>
    <div class="join__container">
      <!-- Button -->
      <?php
      $showGetstarted   = get_field( 'getstarted_show' );
      $showGetconnected = get_field( 'getconnected_show' );
      $showGetinvolved  = get_field( 'getinvolved_show' );
      ?>
      <div class="join__buttons">
        <?php if ( $showGetstarted ) { ?>
          <button class="join__button join__button--started">
            <i class="fas fa-book"></i>
          </button>
        <?php } ?>
        <?php if ( $showGetconnected ) { ?>
          <button class="join__button join__button--connected">
            <i class="fas fa-comments"></i>
          </button>
        <?php } ?>
        <?php if ( $showGetinvolved ) { ?>
          <button class="join__button join__button--involved">
            <i class="fas fa-code-branch"></i>
          </button>
        <?php } ?>
      </div>

      <!-- Get Started -->
      <?php if ( $showGetstarted ) { ?>
        <div class="get get--started active container-fluid">
          <div class="row">
            <div class="get__grid col-12 col-sm-12 col-md-7 col-lg-7 col-xl-6">
              <?php
              $title = get_field( 'getstarted_title'  );
              $text  = get_field( 'getstarted_text'  );

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
              $linkDownloads     = get_field( 'getstarted_link_downloads'  );
              $linkDocumentation = get_field( 'getstarted_link_documentation'  );

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
      <?php } ?>

      <!-- Get Connected -->
      <?php if ( $showGetconnected ) { ?>
        <div class="get get--connected container-fluid">
          <div class="row">
            <div class="get__grid col-12 col-sm-12 col-md-7 col-lg-7 col-xl-6">
              <?php
              $title = get_field( 'getconnected_title'  );
              $text  = get_field( 'getconnected_text'  );

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
              $networks = get_field( 'social_networks'  );

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
      <?php } ?>

      <!-- Get Involved -->
      <?php if ( $showGetinvolved ) { ?>
        <div class="get get--involved container-fluid">
          <div class="row">
            <div class="get__grid col-12 col-sm-12 col-md-7 col-lg-7 col-xl-6">
              <?php
              $title = get_field( 'getinvolved_title'  );
              $text  = get_field( 'getinvolved_text'  );

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
              $linkContributors = get_field( 'getinvolved_link_contributors'  );

              if ( $linkContributors ) { ?>
                <a class="get__link"href="<?php echo $linkContributors ?>">
                  Contribute
                </a>
              <?php } ?>
            </div>
          </div>
        </div>
      <?php } ?>

    </div>
  </section>
<?php } ?>

<!-- Latest news -->
<?php
$query = new WP_Query( array(
  'post_type'  => 'post',
  'posts_per_page' => get_field( 'latestposts_number' ),
) );

if ( $query->have_posts() && get_field( 'latestposts_show' ) ) { ?>
  <section class="latestnews container-fluid">
    <a class="latestnews__link" href="<?php the_permalink( get_option( 'page_for_posts' ) ); ?>">
      <h1 class="center--1200">
        <?php the_field( 'latestposts_title' ) ?>
      </h1>
    </a>

    <div class="row center--1200">
    <?php while ( $query->have_posts() ) {
      $query->the_post();

      get_template_part( 'regular-post' );

    } wp_reset_query(); ?>
    </div>

  </section>
<?php } ?>

<?php get_footer(); ?>
