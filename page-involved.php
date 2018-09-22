<?php
/*
 * Template Name: Get Involved
 */
?>

<?php get_header() ?>

<!-- Involved Section -->
<section class="involved">
  <?php if ( get_field( 'involved_title' ) ) { ?>
    <h1>
      <?php the_field( 'involved_title' ) ?>
    </h1>
  <?php } ?>
  <?php if ( get_field( 'involved_text' ) ) { ?>
    <p class="section__center">
      <?php the_field( 'involved_text' ) ?>
    </p>
  <?php } ?>
</section>

<?php get_footer(); ?>
