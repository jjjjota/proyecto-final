<?php get_header() ?>


<!-- Posts Container -->
<section class="posts container-fluid">
  <!-- <h1>
    <?php //the_field( 'news_title' ); ?>
  </h1> -->

  <?php if ( have_posts() ) { ?>
    <?php $highlights = 0; ?>

    <div class="row center--1000">

    <!-- Search highlight post -->
    <?php while ( have_posts() && $highlights < 1 ) { the_post();

      if ( get_field('highlight') ) {
        get_template_part( 'highlight-post' );

        $highlights = 1;
      }

    } ?> <!-- end while -->
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
