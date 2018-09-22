<?php
/*
 * Template Name: Art Gallery
 */
?>

<?php get_header() ?>

<!-- Gallery section -->
<section class="gallery">

  <?php if ( get_field( 'gallery_title' ) ) { ?>
    <h1 class="gallery__title hidden">
      <?php the_field( 'gallery_title' ) ?>
    </h1>
  <?php } ?>
  <?php if ( get_field( 'gallery_text' ) ) { ?>
    <p class="gallery__description hidden">
      <?php the_field( 'gallery_text' ) ?>
    </p>
  <?php } ?>

  <?php $artworksNumber = get_field( 'gallery_items' ) ?>

  <div class="gallery__container">
    <?php $args = array(
      'post_type'      => 'artworks',
      'orderby'        => 'ASC',
      'posts_per_page' => $artworksNumber
    );

    $query = new WP_Query( $args );

    if ( $query->have_posts() ) {
      while ( $query->have_posts() ) {
        $query->the_post(); ?>

        <?php
        $title       = get_field( 'artwork_title' );
        $artist      = get_field( 'artwork_artist' );
        $image       = get_field( 'artwork_image' );
        $orientation = get_field( 'artwork_orientation' );

        $itemClasses = "gallery__artwork";

        if ( $orientation == "vertical" ) {
          $itemClasses = $itemClasses . ' gallery__artwork--vertical';
        } elseif ( $orientation == "horizontal" ) {
          $itemClasses = $itemClasses . ' gallery__artwork--horizontal';
        }
        ?>

        <!-- the content -->
        <div class="<?php echo $itemClasses ?>">
          <img class="artwork__image" src="<?php echo $image ?>" alt="<?php echo ( $title . ' by ' . $artist ) ?>">
          <p class="artwork__caption">
            <?php if ( !$title ) {
              $title = 'Untitled';
            }

            echo ( $title . ', by ' . $artist ); ?>
          </p>
        </div>

      <?php } wp_reset_postdata(); ?>
    <?php } ?>
  </div>

  <!-- modal -->
  <!-- <div class="gallery__modal">
    <img src="" alt="hola">
  </div> -->

</section>

<!-- Send your art section -->
<?php if ( get_field( 'gallery_display_form' ) ) { ?>
  <section class="sendYourArt">
    <h1 class="hidden">
      <?php the_field( 'gallery_form_title' ) ?>
    </h1>
    <form class="sendYourArt__form">
      <!-- name -->
      <input class="sendYourArt__inputText form-control form-control-sm" type="text" placeholder="Your name" required>

      <!-- email -->
      <input type="email" class="sendYourArt__inputText form-control form-control-sm" placeholder="Your email" required>

      <!-- title -->
      <input class="sendYourArt__inputText form-control form-control-sm" type="text" placeholder="Title">

      <!-- file -->
      <input type="file" class="sendYourArt__inputFile form-control-file" accept="image/*" require>

      <!-- submit -->
      <button type="submit" class="sendYourArt__inputSubmit btn btn-primary">Send</button>
    </form>
  </section>
<?php } ?>

<?php get_footer(); ?>
