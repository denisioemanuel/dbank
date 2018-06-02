// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).ready(function(){

  feather.replace();

  $('#modal').on('shown.bs.modal', function (event) {
    $('#modalConta').trigger('focus');
    var button = $(event.relatedTarget);
    var title = button.data('title-modal');
    var modal = $(this);
    modal.find('.modal-title').text(title);
    console.log(event);
    console.log(button);
    var a = button.attr('href');
    modal.find('.modal-body').html('');
    console.log(a);
  });
});
