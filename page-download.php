<?php
/*
 * Template Name: Download
 */
?>

<?php get_header() ?>

<!-- MainDownloads -->
<div class="mainDownloads container-fluid">
  <div class="row">

    <!-- Stable versions -->
    <section class="stable mainDownloads__column col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
      <h1>
        <?php the_field( 'stable_title' ); ?>
      </h1>
      <!-- Windows versions -->
      <?php if ( have_rows( 'stable_windows_versions' ) ) { ?>
        <div class="stable__row">
          <i class="fab fa-windows mainDownloads__logo"></i>
          <?php while ( have_rows( 'stable_windows_versions' ) ) { ?>
            <?php the_row(); ?>
            <a class="stable__link hidden" href="<?php the_sub_field( 'stable_windows_version_link' ) ?>" target="_self">
              <?php the_sub_field( 'stable_windows_version_name' ) ?>
            </a>
          <?php } ?>
        </div>
      <?php } ?>
      <!-- Mac versions -->
      <?php if ( have_rows( 'stable_mac_versions' ) ) { ?>
        <div class="stable__row">
          <i class="fab fa-apple mainDownloads__logo"></i>
          <?php while ( have_rows( 'stable_mac_versions' ) ) { ?>
            <?php the_row(); ?>
            <a class="stable__link hidden" href="<?php the_sub_field( 'stable_mac_version_link' ) ?>" target="_self">
              <?php the_sub_field( 'stable_mac_version_name' ) ?>
            </a>
          <?php } ?>
        </div>
      <?php } ?>
      <!-- Linux versions -->
      <?php if ( have_rows( 'stable_linux_versions' ) ) { ?>
        <div class="stable__row">
          <i class="fab fa-linux mainDownloads__logo"></i>
          <?php while ( have_rows('stable_linux_versions' ) ) { ?>
            <?php the_row(); ?>
            <a class="stable__link hidden" href="<?php the_sub_field( 'stable_linux_version_link' ) ?>" target="_self">
              <?php the_sub_field( 'stable_linux_version_name' ) ?>
            </a>
          <?php } ?>
        </div>
      <?php } ?>
    </section>

    <!-- Nightly builds -->
    <section class="nightly mainDownloads__column  col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
      <h1>
        <?php the_field( 'nightly_title' ); ?>
      </h1>
      <?php while ( have_rows( 'nightly_builts' ) ) { ?>
        <div class="nightly__built center--400">
          <?php the_row(); ?>
          <h3>
            <?php the_sub_field( 'nightly_built_name' ) ?>
          </h3>
          <div class="nightly__row hidden">
            <p>
              <?php the_sub_field( 'nightly_built_description' ) ?>
            </p>
            <?php
            $versions = get_sub_field( 'nightly_built_versions' );
            ?>
            <a class="nightly__link" href="<?php echo $versions['nightly_built_windows'] ?>" target="_self">
              <i class="fab fa-windows mainDownloads__logo"></i>
            </a>
            <a class="nightly__link" href="<?php echo $versions['nightly_built_linux'] ?>" target="_self">
              <i class="fab fa-linux mainDownloads__logo"></i>
            </a>
          </div>
        </div>
      <?php } ?>
    </section>

  </div>
</div>


<!-- Other downloads -->
<?php if ( get_field( 'otherdownloads_show' ) ) { ?>
  <section class="otherDownloads container-fluid">
    <div class="row center--1200">

      <?php while ( have_rows( 'otherdownloads_sections' ) ) { ?>
        <?php the_row(); ?>

        <div class="otherDownloads__sectionContainer col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
          <div class="otherDownloads__section">
            <h3>
              <?php the_sub_field( 'otherdownloads_section_title' ) ?>
            </h3>
            <p>
              <?php the_sub_field( 'otherdownloads_section_description' ) ?>
            </p>
            <div class="otherDownloads__links">
              <?php while ( have_rows( 'otherdownloads_section_links' ) ) { ?>
                <?php
                the_row();

                $link = get_sub_field( 'otherdownloads_section_link' );
                ?>

                <a class="otherDownloads__link" href="<?php echo $link['url'] ?>" target="_self">
                  <?php echo $link['title'] ?>
                </a>
              <?php } ?>
            </div>
          </div>
        </div>
      <?php } ?>

    </div>
  </section>
<?php } ?>

<?php get_footer(); ?>
