
# edit /etc/php/7.1/fpm/conf.d/20-xdebug.ini with the following
# setting to properly enable xDebug for things other than cli
# xdebug.remote_enable=1
# xdebug.remote_handler=dbgp
# xdebug.remote_mode=req
# xdebug.remote_host=localhost
# xdebug.remote_port=9000
# xdebug.var_display_max_depth = -1
# xdebug.var_display_max_children = -1
# xdebug.var_display_max_data = -1
# xdebug.idekey = "vdebug"

sudo vim /etc/php/7.1/fpm/conf.d/20-xdebug.ini

# disable xdebug to speed up things during installation and updates
sudo phpdismod xdebug
                                              # please edit this file updating the following lines:
# - cgi.fix_pathinfo=0
# - display_errors=On
# - memory_limit=1024M
# - max_execution_time = 600
# - max_input_nesting_level = 512
# - post_max_size = 128M
# - upload_max_filesize = 128M
sudo vim /etc/php/7.1/fpm/php.ini
