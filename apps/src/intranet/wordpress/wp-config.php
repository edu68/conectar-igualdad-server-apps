<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'administrador');

/** MySQL database password */
define('DB_PASSWORD', 'upN2XuOQ5u5u');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'j+_h(y_;M)Pr)}Pw]JYj&R6k#-;pgxwe;f(c2J4bC#-_^1,|3K?E4lQLT)r!Q>+=');
define('SECURE_AUTH_KEY',  'HjWNU#T+391Fv-z-Nu?w^J|YNO(Y]M|]{mLgw#!AqbGUG_kO1mZ4#p>Cl8(OjCi,');
define('LOGGED_IN_KEY',    'i9yc~|9@)bRJwU~R<,#F3j_u5qLH2jI^<);}!<1}_5*Ni]<2S-Nafv*V<#B]+_7o');
define('NONCE_KEY',        '04ZjUJ/^pe2*C8& .R?x*V,L:P9cK:d_.:kA1 ri2IucrEB~,w+^)>xb`7.H>_Q.');
define('AUTH_SALT',        '@[8Oy3D<aLsM}9TCDE=.mcQNHr}p`7@$$2%WYYI#[DK|+`ORP*$+]h@o@Yxl$C%R');
define('SECURE_AUTH_SALT', 'fKm`Aq[GbzhTIZZI.F`*})+Pl0S5mE*ZVAl)}_#YL-u+Xi.HiT*~sF_|TkoQl*F}');
define('LOGGED_IN_SALT',   'g#O&q3wmIOnH+u&^+wS.W|XN#E>M-hKX`w$!+*PNm4],vguu0Mj[?{[w@AdM#Nz$');
define('NONCE_SALT',       '@0.-Bh|K0n~KDlc=^jh^ 3m*`oJis90Nck`6%%a[bN3-/vqFtL<Ivqjf`xid13zd');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', 'es_ES');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);


define( 'MULTISITE', true );
define( 'SUBDOMAIN_INSTALL', false );
$base = '/intranet/wordpress/';
define( 'DOMAIN_CURRENT_SITE', '172.16.0.1' );
define( 'PATH_CURRENT_SITE', '/intranet/wordpress/' );
define( 'SITE_ID_CURRENT_SITE', 1 );
define( 'BLOG_ID_CURRENT_SITE', 1 );


/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

define('WP_ALLOW_MULTISITE', true);

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
