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
      <?php the_field( 'developers_content' ) ?>
    </div>
  </section>
<?php } ?>

<!-- Non Developers -->
<?php if ( $showNonDevelopers) { ?>
  <section class="nondevelopers">
    <h1 class="center--1200">
      <?php the_field( 'nondevelopers_title' ) ?>
    </h1>
    <div class="container-fluid">
      <div class="row center--1200">
        <?php while ( have_rows( 'nondevelopers_sections' ) ) { ?>
          <?php the_row() ?>

          <div class="nondevelopers__sectionContainer col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
            <div class="nondevelopers__section">
              <?php the_sub_field( 'nondevelopers_section_content' ) ?>
            </div>
          </div>
        <?php } ?>
      </div>
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
        <?php the_field( 'suggestions_content' ) ?>
      </section>
    <?php } ?>

    <!-- Support -->
    <?php if ( $showSupport ) { ?>
      <section class="support">
        <h1>
          <?php the_field( 'support_title' ) ?>
        </h1>
        <?php the_field( 'support_content' ) ?>
      </section>
    <?php } ?>

  </div>
<?php } ?>

<!-- Contributors -->
<?php
$args = array(
  'post_type'      => 'contributors',
  'orderby'        => 'ASC',
  'posts_per_page' => -1
);

$query = new WP_Query( $args ); ?>

<?php if ( get_field( 'contributors_show' ) ) { ?>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCA_m00gCN3it7ADJYxXIpX8tVAZGzwnbo"></script>

  <section class="contributors">
    <h1 class="hidden">
      <?php the_field( 'contributors_title' ) ?>
    </h1>

    <div class="acf-map center--1000">
      <?php while ( $query->have_posts() ) {
        $query->the_post();

        $location = get_field( 'contributor_location' ); ?>

        <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
      <?php } ?>
    </div>
  </section>
<?php } ?>

<?php get_footer(); ?>
