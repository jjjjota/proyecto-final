<?php get_header() ?>


<?php if (have_posts()) { ?>
  <?php $highlights = 0; ?>

  <!-- Posts Container -->
  <section class="container-fluid">
    <h1>
      <?php echo get_field( 'news_title', 87 ) ?>
    </h1>
    <div class="row posts__container">

    <?php while ( have_posts() ) { ?>
      <?php the_post(); ?>

      <?php if ( get_field('highlight') && $highlights < 1 ) { ?>

        <div class="posts__grid--highlight col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
          <a href="<?php the_permalink() ?>">

            <div class="posts__overlay"></div>
            <h1>
              <?php echo get_the_title() ?>
            </h1>
            <img src="<?php the_post_thumbnail_url() ?>" alt="" />

          </a>
        </div>
        <?php $highlights = 1; ?>

      <? } else { ?>
      <div class="posts__grid col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
        <a class="posts__link" href="<?php the_permalink() ?>">

          <div class="posts">
            <div class="posts__image">
              <h2>
                <?php echo get_the_title() ?>
              </h2>
              <img src="<?php the_post_thumbnail_url() ?>" alt="" />
            </div>
            <div class="posts__content">
              <?php the_excerpt() ?>
            </div>
          </div>

        </a>
      </div>
      <?php } ?>

    <?php }; ?>
    </div>
  </section>

<?php } else { ?>
	<!-- Content -->
	<p>No hay elementos</p>
<?php } wp_reset_query(); ?>


<!-- <?php //get_sidebar() ?> -->
<?php get_footer() ?>
