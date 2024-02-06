source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.3'

gem 'rails', '~> 7.0.4', '>= 7.0.4.3'

gem 'pg', '~> 1.1'

gem 'importmap-rails'
gem 'jbuilder'
gem 'puma', '~> 5.0'
gem 'stimulus-rails'
gem 'turbo-rails'
# gem "redis", "~> 4.0"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

gem 'cssbundling-rails', '~> 1.4'
gem 'rails-i18n'
gem 'rubocop-rails', require: false
gem 'spina', '~> 2.18'
gem 'seed_dump'
gem 'seedbank'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console'
  # gem "rack-mini-profiler"
  # gem "spring"
  gem 'rubocop-minitest'
  gem 'ruby-lsp', require: false
  gem 'ruby-lsp-rails'
end
