// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
//= require materialize
import 'materialize';
document.addEventListener('DOMContentLoaded', function() {
  M.AutoInit();
});

//Menu
$(document).ready(function(){
  $('.sidenav').sidenav();
});
