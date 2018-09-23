<?php get_header() ?>


<?php if (have_posts()) { ?>
  <?php $highlights = 0; ?>

  <!-- Posts Container -->
  <section class="posts container-fluid">
    <h1>
      <?php echo get_field( 'news_title', 87 ) ?>
    </h1>
    <div class="row center--1000">

    <!-- Search highlight post -->
    <?php while ( have_posts() && $highlights < 1 ) { ?>
      <?php the_post(); ?>

      <?php if ( get_field('highlight') ) { ?>

        <div class="posts__post--highlight col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
          <a href="<?php the_permalink() ?>">

            <div class="posts__mid">
              <div class="posts__overlay"></div>
              <h2 class="posts__title--highlight">
                <?php echo get_the_title() ?>
              </h2>
              <img class="posts__image--highlight" src="<?php the_post_thumbnail_url() ?>" alt="" />
            </div>

          </a>
        </div>
        <?php $highlights = 1; ?>



      <?php } ?>
    <?php } ?> <!-- end while -->
    </div>

    <!-- Show regular posts -->
    <?php if ( dynamic_sidebar( 'gallery-posts' ) ) : else : endif; ?>

  </section>

<?php } else { ?>
	<!-- Content -->
	<p>No hay elementos</p>
<?php } wp_reset_query(); ?>


<!-- <?php //get_sidebar() ?> -->
<?php get_footer() ?>
