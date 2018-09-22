<?php
/*
 * Template Name: Get Involved
 */
?>

<?php get_header() ?>

<!-- Overview Section -->
<section class="overview">
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

  <!-- buttons -->
  <div class="section__center overview__buttons">
    <?php //if ( get_field( 'developers_show' ) ) { ?>
      <button class="overview__button"><i class="fas fa-code"></i><br/>Developers</button>
    <?php //} ?>
    <?php //if ( get_field( 'nondevelopers_show' ) ) { ?>
      <button class="overview__button"><i class="fas fa-asterisk"></i><br/>Non-Developers</button>
    <?php //} ?>
    <?php //if ( get_field( 'suggestions_show' ) ) { ?>
      <button class="overview__button"><i class="fas fa-lightbulb"></i><br/>Suggestions</button>
    <?php //} ?>
    <?php //if ( get_field( 'support_show' ) ) { ?>
      <button class="overview__button"><i class="fas fa-life-ring"></i><br/>Support</button>
    <?php //} ?>
  </div>
</section>

<!-- Developers -->
<section class="developers">
  <!-- Column left -->
  <div class="developers__left">
    <h1>
      <?php the_field( 'developers_title' ) ?>
    </h1>
    <?php if ( get_field( 'developers_text' ) ) { ?>
      <p>
        <?php the_field( 'developers_text' ) ?>
      </p>
    <?php } ?>
  </div>

  <!-- Column right -->
  <div class="developers__right">
    <?php while ( have_rows( 'developers_sections' ) ) { ?>
      <?php the_row() ?>
      <h2>
        <?php the_sub_field( 'developers_section_title' ) ?>
      </h2>
      <p>
        <?php the_sub_field( 'developers_section_text' ) ?>
      </p>
    <?php } ?>
  </div>
</section>

<?php get_footer(); ?>
