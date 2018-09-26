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

    <?php } wp_reset_query(); ?>
  </section>

<?php } else { ?>
	<!-- Content -->
<?php } ?>

<!-- Highlights news -->
<?php
$query = new WP_Query( array(
  'post_type'  => 'post',
  'posts_per_page' => -1,
) );

$postToShow = 3;
$postShowed = 0;

if ( $query->have_posts() ) { ?>
  <section class="highlightsnews container-fluid">
    <h1>
      Highlights News
    </h1>

    <div class="row center--1200">
    <?php while ( $query->have_posts() && $postShowed < $postToShow ) {
      $query->the_post();

      if ( get_field( 'highlight' ) ) {
        get_template_part( 'highlight-post' );

        ++$postShowed;
      }
    } wp_reset_query(); ?>
    </div>

  </section>
<?php } ?>

<?php get_footer() ?>
