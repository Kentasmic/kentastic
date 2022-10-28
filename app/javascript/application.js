// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//10-27-22 used to delay the search submit so that it only searches for full words, not each letter typed.
import "lodash.debounce"
