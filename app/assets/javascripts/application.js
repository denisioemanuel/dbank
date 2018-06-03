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
//= require jquery3
//= require popper
//= require bootstrap
//= require toastr
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  $('.alert').alert();


  $('#modalConfirm').on('shown.bs.modal', function(event) {
    $('#modal').trigger('focus');
    var target = $(event.relatedTarget);
    var mensagem = target.data('mensage');
    var modal = $(this);
    var link = target.attr('href');
    modal.find('.messageModal').text(mensagem);

    modal.find("#btnConfirmation").click(function(event) {
      event.preventDefault();
      $.ajax({
        url: link,
        type: 'DELETE'
        contentType: 'html'
      });
    });
  });

});
