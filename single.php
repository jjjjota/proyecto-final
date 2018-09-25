<?php get_header() ?>

<?php if ( have_posts() ) { ?>


  <!-- Post -->
  <section class="post__container">
    <?php while ( have_posts() ) { ?>

      <div class="post__thumbnail" style="background-image: url(<?php the_post_thumbnail_url(); ?>)"></div>

      <div class="post center--800">
        <?php the_post(); ?>

        <h1 class="hidden">
          <?php the_title() ?>
        </h1>
        <time class="hidden" datetime="<?php the_time('Y-m-d') ?>">
          <?php the_time('d \d\e F \d\e Y') ?>
        </time>

        <?php the_content() ?>

        <!-- Share links -->
        <div class="post__share"></div>
      </div>

    <?php } ?>
  </section>

<?php } else { ?>
	<!-- Content -->
<?php } wp_reset_query(); ?>

<!-- <?php //get_sidebar() ?> -->
<?php get_footer() ?>
