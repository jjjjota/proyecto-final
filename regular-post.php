<div class="posts__post col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
  <a href="<?php the_permalink() ?>">

    <div class="posts__postTop">
      <h2 class="posts__title">
        <?php echo get_the_title() ?>
      </h2>
      <img class="posts__image"src="<?php the_post_thumbnail_url() ?>" alt="" />
    </div>
    <div class="posts__postBottom">
      <?php the_excerpt() ?>
    </div>

  </a>
</div>
