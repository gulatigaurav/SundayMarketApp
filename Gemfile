source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.5'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3', '~> 1.3', '>= 1.3.13'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :production do
    gem 'pg', '~> 0.21.0'
    gem 'rails_12factor'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0.beta'
gem 'devise', '~> 4.3'
gem 'petergate', '~> 1.7', '>= 1.7.5'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'pry-byebug', '~> 3.5'
gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'# gem 'bcrypt', '~> 3.1.7'
gem 'gritter', '~> 1.2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'

ruby "2.3.3"
