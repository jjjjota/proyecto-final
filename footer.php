<footer class="footer container-fluid">
  <div class="row">

    <!-- logo -->
    <div class="footer__logo col-4 col-xs-4 col-sm-2 col-lg-2 col-xl-3">
      <img class="img-fluid" src="<?php echo get_field( 'logo', 6 )['url'] ?>" alt="krita logo" />
    </div>

    <!-- social networks -->
    <?php
    $networks = get_field( 'social_networks', 6 );

    if ( $networks ) { ?>
      <div class="footer__networks col-8 col-xs-8 col-sm-5 col-lg-5 col-xl-6">

        <?php
        foreach( $networks as $network ) {
          if ( $network ) { ?>
            <a class="footer__network" href="<?php echo $network ?>">
              <?php if       ( $network == $networks['devianart'] ) { ?>
                <i class="fab fa-deviantart"></i>
              <?php } elseif ( $network == $networks['facebook'] ) { ?>
                <i class="fab fa-facebook-f"></i>
              <?php } elseif ( $network == $networks['twitter'] ) { ?>
                <i class="fab fa-twitter"></i>
              <?php } elseif ( $network == $networks['googleplus'] ) { ?>
                <i class="fab fa-google-plus-g"></i>
              <?php } elseif ( $network == $networks['vkontakte'] ) { ?>
                <i class="fab fa-vk"></i>
              <?php } elseif ( $network == $networks['reddit'] ) { ?>
                <i class="fab fa-reddit"></i>
              <?php } elseif ( $network == $networks['mastodonart'] ) { ?>
                <i class="fab fa-mastodon"></i>
              <?php } ?>
            </a>
          <?php } ?>
        <?php } ?>

      </div>
    <?php } ?>

    <!-- newsletter -->
    <form class="footer__form col-12 col-xs-12 col-sm-5 col-lg-5 col-xl-3">
      <label class="footer__label" for="email">Newsletter</label>
      <input class="footer__email" type="email" name="newsletterEmail" placeholder="your@email.com" />

      <div class="footer__submit">
        <input class="footer__submitButton" type="submit" name="newsletterSubmit" value="" />
        <i class="fas fa-newspaper"></i>
      </div>
    </form>

  </div> <!-- end .row -->
</footer>

<?php wp_footer(); ?>

</body>
</html>
