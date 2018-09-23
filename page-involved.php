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
    <p class="center--600">
      <?php the_field( 'involved_text' ) ?>
    </p>
  <?php } ?>

  <!-- buttons -->
  <?php
  $showDevelopers    = get_field( 'developers_show' );
  $showNonDevelopers = get_field( 'developers_show' );
  ?>
  <div class="center--600 overview__buttons">
    <?php if ( $showDevelopers ) { ?>
      <button class="overview__button"><i class="fas fa-code"></i><br/>Developers</button>
    <?php } ?>
    <?php if ( $showNonDevelopers ) { ?>
      <button class="overview__button"><i class="fas fa-asterisk"></i><br/>Non-Developers</button>
    <?php } ?>
    <?php //if ( get_field( 'suggestions_show' ) ) { ?>
      <button class="overview__button"><i class="fas fa-lightbulb"></i><br/>Suggestions</button>
    <?php //} ?>
    <?php //if ( get_field( 'support_show' ) ) { ?>
      <button class="overview__button"><i class="fas fa-life-ring"></i><br/>Support</button>
    <?php //} ?>
  </div>
</section>

<!-- Developers -->
<?php if ( $showDevelopers ) { ?>
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
<?php } ?>

<!-- Non Developers -->
<?php if ( $showNonDevelopers) { ?>
  <section class="nondevelopers">
    <h1 class="center--1200">
      <?php the_field( 'nondevelopers_title' ) ?>
    </h1>
    <div class="nondevelopers__sections center--1200">
      <?php while ( have_rows( 'nondevelopers_sections' ) ) { ?>
        <?php the_row() ?>

        <div class="nondevelopers__section">
          <h2>
            <?php the_sub_field( 'nondevelopers_section_title' ) ?>
          </h2>
          <p>
            <?php the_sub_field( 'nondevelopers_section_text' ) ?>
          </p>
        </div>
      <?php } ?>
    </div>
  </section>
<?php } ?>

<?php get_footer(); ?>
