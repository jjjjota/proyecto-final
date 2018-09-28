<div class="posts__postContainer col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
  <div class="posts__post">
    <a href="<?php the_permalink() ?>">

      <div class="posts__postTop">
        <?php if ( get_field( 'highlight' ) ) { ?>
          <i class="posts__icon fas fa-star"></i>
        <?php } ?>
        <h2 class="posts__title">
          <?php the_title() ?>
        </h2>
        <img class="posts__image" src="<?php the_post_thumbnail_url() ?>" alt="<?php the_title() . ' featured image' ?>" />
      </div>
      <div class="posts__postBottom">
        <?php the_excerpt() ?>
      </div>

    </a>
  </div>
</div>
