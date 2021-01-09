source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bcrypt', '~> 3.1.7'


gem 'bootsnap', '>= 1.4.2', require: false
gem 'simple_form'
gem 'time_difference'
gem 'bootstrap-will_paginate'
gem 'will_paginate'
gem 'hirb'
gem 'impressionist'

gem 'sassc', '~> 2.1.0'

group :production, :development, :test do
  gem 'cloudinary'
end

group :development, :test do  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'bullet'  
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'  
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.6'
  gem 'capistrano-rvm',     require: false
  gem "capistrano-rails", "~> 1.5", require: false
  gem 'capistrano-bundler', '~> 1.6'
  gem 'capistrano3-puma',   require: false
end

group :test do  
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'  
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
