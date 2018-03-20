let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.styles([
    'resources/assets/admin/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css',
    'resources/assets/admin/vendors/bower_components/bootstrap/dist/css/bootstrap.min.css',
    'resources/assets/admin/dist/css/font-awesome.min.css',
    'resources/assets/admin/dist/css/themify-icons.css',
    'resources/assets/admin/dist/css/animate.css',
    'resources/assets/admin/dist/css/simple-line-icons.css',
    'resources/assets/admin/dist/css/linea-icon.css',
    'resources/assets/admin/dist/css/pe-icon-7-stroke.css',
    'resources/assets/admin/dist/css/pe-icon-7-styles.css',
    'resources/assets/admin/dist/css/material-design-iconic-font.min.css',
    'resources/assets/admin/dist/css/filter.css',
    'resources/assets/admin/vendors/bower_components/switchery/dist/switchery.min.css',
    'resources/assets/admin/vendors/bower_components/owl.carousel/dist/assets/owl.carousel.min.css',
    'resources/assets/admin/vendors/bower_components/owl.carousel/dist/assets/owl.theme.default.min.css',
    'resources/assets/admin/dist/css/lightgallery.css',
    'resources/assets/admin/vendors/bower_components/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css',
    'resources/assets/admin/dist/css/style.css'
],'public/css/admin.css');

mix.scripts([
    'resources/assets/admin/vendors/bower_components/jquery/dist/jquery.min.js',
    'resources/assets/admin/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js',
    'resources/assets/admin/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js',
    'resources/assets/admin/dist/js/dataTables-data.js',
    'resources/assets/admin/dist/js/jquery.slimscroll.js',
    'resources/assets/admin/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js',
    'resources/assets/admin/vendors/bower_components/switchery/dist/switchery.min.js',
    'resources/assets/admin/dist/js/dropdown-bootstrap-extended.js',
    'resources/assets/admin/dist/js/init.js'


],'public/js/admin.js');


mix.copy('resources/assets/admin/dist/fonts','public/fonts');



