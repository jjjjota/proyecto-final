<?php
function my_acf_init() {
	acf_update_setting('google_api_key', 'AIzaSyCA_m00gCN3it7ADJYxXIpX8tVAZGzwnbo');
}

add_action('acf/init', 'my_acf_init');
?>
