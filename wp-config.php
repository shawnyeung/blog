<?php
define( 'DB_NAME', getenv('blog') );
define( 'DB_USER', getenv('blog_0dyn_user') );
define( 'DB_PASSWORD', getenv('bBTgJH8s03X0XsY5mdrQRelMLoZmZ44n') );
define( 'DB_PORT', getenv('5432') );
define( 'DB_HOST', getenv('dpg-cq8r77dds78s7394sarg-a') );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
