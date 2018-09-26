<?php if ( is_home() ) { ?>
  <div class="posts__post--highlight col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
    <a href="<?php the_permalink() ?>">

      <div class="posts__mid">
        <div class="posts__overlay"></div>
        <h2 class="posts__title--highlight">
          <?php the_title() ?>
        </h2>
        <img class="posts__image--highlight" src="<?php the_post_thumbnail_url() ?>" />
      </div>

    </a>
  </div>
<?php } else {
  get_template_part( 'regular-post' );
} ?>
