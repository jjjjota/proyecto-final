<?php

// Register Artworks Custom Post Type
function artworks_post_type() {

	$labels = array(
		'name'                  => _x( 'Artworks', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Artwork', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Artworks', 'text_domain' ),
		'name_admin_bar'        => __( 'Artwork', 'text_domain' ),
		'archives'              => __( 'Artwork Archives', 'text_domain' ),
		'attributes'            => __( 'Artwork Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Artwork:', 'text_domain' ),
		'all_items'             => __( 'All Artworks', 'text_domain' ),
		'add_new_item'          => __( 'Add New Artwork', 'text_domain' ),
		'add_new'               => __( 'Add New Artwork', 'text_domain' ),
		'new_item'              => __( 'New Artwork', 'text_domain' ),
		'edit_item'             => __( 'Edit Artwork', 'text_domain' ),
		'update_item'           => __( 'Update Artwork', 'text_domain' ),
		'view_item'             => __( 'View Artwork', 'text_domain' ),
		'view_items'            => __( 'View Artworks', 'text_domain' ),
		'search_items'          => __( 'Search Artwork', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Artwork', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Artwork', 'text_domain' ),
		'items_list'            => __( 'Artworks list', 'text_domain' ),
		'items_list_navigation' => __( 'Artworks list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter Artworks list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Artwork', 'text_domain' ),
		'description'           => __( 'Artwork from community', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'custom-fields' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-format-image',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'artworks', $args );

}
add_action( 'init', 'artworks_post_type', 0 );


// Register Contributors Custom Post Type
function contributors_post_type() {

	$labels = array(
		'name'                  => _x( 'Contributors', 'Post Type General Name', 'text_domain' ),
		'singular_name'         => _x( 'Contributor', 'Post Type Singular Name', 'text_domain' ),
		'menu_name'             => __( 'Contributors', 'text_domain' ),
		'name_admin_bar'        => __( 'Contributor', 'text_domain' ),
		'archives'              => __( 'Contributor Archives', 'text_domain' ),
		'attributes'            => __( 'Contributor Attributes', 'text_domain' ),
		'parent_item_colon'     => __( 'Parent Contributor:', 'text_domain' ),
		'all_items'             => __( 'All Contributors', 'text_domain' ),
		'add_new_item'          => __( 'Add New Contributor', 'text_domain' ),
		'add_new'               => __( 'Add New Contributor', 'text_domain' ),
		'new_item'              => __( 'New Contributor', 'text_domain' ),
		'edit_item'             => __( 'Edit Contributor', 'text_domain' ),
		'update_item'           => __( 'Update Contributor', 'text_domain' ),
		'view_item'             => __( 'View Contributor', 'text_domain' ),
		'view_items'            => __( 'View Contributors', 'text_domain' ),
		'search_items'          => __( 'Search Contributor', 'text_domain' ),
		'not_found'             => __( 'Not found', 'text_domain' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'text_domain' ),
		'featured_image'        => __( 'Featured Image', 'text_domain' ),
		'set_featured_image'    => __( 'Set featured image', 'text_domain' ),
		'remove_featured_image' => __( 'Remove featured image', 'text_domain' ),
		'use_featured_image'    => __( 'Use as featured image', 'text_domain' ),
		'insert_into_item'      => __( 'Insert into Contributor', 'text_domain' ),
		'uploaded_to_this_item' => __( 'Uploaded to this Contributor', 'text_domain' ),
		'items_list'            => __( 'Contributors list', 'text_domain' ),
		'items_list_navigation' => __( 'Contributors list navigation', 'text_domain' ),
		'filter_items_list'     => __( 'Filter Contributors list', 'text_domain' ),
	);
	$args = array(
		'label'                 => __( 'Contributor', 'text_domain' ),
		'description'           => __( 'Contains the locations of Krita contributors', 'text_domain' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'custom-fields' ),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-location-alt',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'contributors', $args );

}
add_action( 'init', 'contributors_post_type', 0 );
