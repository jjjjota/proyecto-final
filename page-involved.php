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
  $showNonDevelopers = get_field( 'nondevelopers_show' );
  $showSuggestions   = get_field( 'suggestions_show' );
  $showSupport       = get_field( 'support_show' );
  ?>
  <div class="center--600 overview__buttons">
    <?php if ( $showDevelopers ) { ?>
      <button class="overview__button btn--developers"><i class="fas fa-code"></i><br/>Developers</button>
    <?php } ?>
    <?php if ( $showNonDevelopers ) { ?>
      <button class="overview__button btn--nondevelopers"><i class="fas fa-asterisk"></i><br/>Non-Developers</button>
    <?php } ?>
    <?php if ( $showSuggestions ) { ?>
      <button class="overview__button btn--suggestions"><i class="fas fa-lightbulb"></i><br/>Suggestions</button>
    <?php } ?>
    <?php if ( $showSupport ) { ?>
      <button class="overview__button btn--support"><i class="fas fa-life-ring"></i><br/>Support</button>
    <?php } ?>
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

<!-- Dual container -->
<?php if ( $showSuggestions || $showSupport ) { ?>
  <div class="dualContainer">
    <!-- Suggestions -->
    <?php if ( $showSuggestions ) { ?>
      <section class="suggestions">
        <h1>
          <?php the_field( 'suggestions_title' ) ?>
        </h1>
        <p>
          <?php the_field( 'suggestions_text' ) ?>
        </p>
      </section>
    <?php } ?>

    <!-- Support -->
    <?php if ( $showSupport ) { ?>
      <section class="support">
        <h1>
          <?php the_field( 'support_title' ) ?>
        </h1>
        <p>
          <?php the_field( 'support_text' ) ?>
        </p>
      </section>
    <?php } ?>

  </div>
<?php } ?>

<!-- Contributors -->
<?php if ( get_field( 'contributors_show' ) ) { ?>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCA_m00gCN3it7ADJYxXIpX8tVAZGzwnbo"></script>

  <?php if( have_rows('contributors') ) { ?>
    <section class="contributors">
      <h1 class="hidden">
        <?php the_field( 'contributors_title' ) ?>
      </h1>
    	<div class="acf-map center--1200">
    		<?php while ( have_rows('contributors') ) {
          the_row();

    			$location = get_sub_field('contributor_location'); ?>

          <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
    	  <?php } ?>
      </div>
    </section>
  <?php } ?>
<?php } ?>

<?php get_footer(); ?>
