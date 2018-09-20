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
        $location    = get_field( 'artwork_location' );
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
            <?php echo ( $title . ' — ' . $artist ) ?>
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
<section class="sendYourArt container-fluid">
  <div class="row">

    <div class="sendYourArt__map col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6" id="map" ></div>
    <div class="sendYourArt__form col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">

    </div>

  </div>
</section>


<!-- API maps -->
<script>

  let locations = [];

  function initMap() {
    let map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: 52.252125, lng: 6.157053},
      zoom: 2
    });

    let markers = locations.map(function(location, i) {
      return new google.maps.Marker({
        position: location,
        label: i
      });
    });

    let markerCluster = new MarkerClusterer(
      map,
      markers,
      { imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m' } );
  }

</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCA_m00gCN3it7ADJYxXIpX8tVAZGzwnbo&callback=initMap"></script>

<?php get_footer(); ?>
