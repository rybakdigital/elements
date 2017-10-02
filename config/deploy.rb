# config valid only for current version of Capistrano
lock '>=3.4.0'

set :application,                      'rybakdigital-elements'
set :repo_url,                         'git@github.com:rybakdigital/elements.git'
set :app_httpdocs_folder,              'web'
set :apache_vhosts_folder,             '/etc/apache2/sites-available'
set :app_path,                         'web'
set :symfony_parameters_source_folder, '/etc/rybakdigital/sites'

after ":deploy:updated", "composer:installer:install"
after ":deploy:updated", "apache:vhost:install"
after ":deploy:updated", "apache:vhost:enable"
after ":deploy:updated", "robots:install"
after ":deploy:updated", "apache:apache2ctl:graceful"
