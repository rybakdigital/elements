server '46.101.5.86', user: 'root', roles: %w{db web files}

set :branch, ENV['branch'] || 'develop'
