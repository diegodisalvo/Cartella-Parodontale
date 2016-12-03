// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.turbolinks
//= require bootstrap-sprockets
//= require chart
//= require_tree .

$(document).on('turbolinks:load', function(){

  $('.messages').click(function(){
    $(this).hide(300);
  });


// toggling favorite in new form for exams
$('.btn.action').click(function(){
  if($(this).text() == 'no'){
    $(this).children('p').text('sì');
    var input = $('#' + $(this).data('type') + '-' + $(this).data('element'));
    input.val($(this).data('value'));
    $(this).data('value', 0);

    //change class to alert
    if($(this).data('type') == 'sanguinamento'){
      $(this).removeClass('btn-info').addClass('btn-danger');
    };
    if ($(this).data('type') == 'placca'){
      $(this).removeClass('btn-info').addClass('btn-warning');
    };
    if ($(this).data('type') == 'pus'){
      $(this).removeClass('btn-info').addClass('btn-warning');
    } else {
      $(this).removeClass('btn-info').addClass('btn-success');
    }
  } else {
    $(this).children('p').text('no');
    var input = $('#' + $(this).data('type') + '-' + $(this).data('element'));
    input.val($(this).data('value'));
    $(this).data('value', 1);
    $(this).removeClass('btn-warning').addClass('btn-info');
  }
  //change text of the botton and value
});


//toggle visibility of rows

var show_all_button_hidden = true;
$('#show-all').fadeOut(300);

$('td.index').click(function(){
  if(show_all_button_hidden){
    $('#show-all').fadeIn(300);
    show_all_button_hidden = false;
  }
  $(this).parent('tr').hide(300);
});

$('#show-all').click(function(){
  $('tr').show();
  $('#show-all').fadeOut(300);
  show_all_button_hidden = true;
});


var checked_element;

var favourite_text_1 = 'Mostra solo i preferiti';
var favourite_text_2 = 'Mostra tutti i dati';
$('#show-favourites').text(favourite_text_1);

  //Favourite function
  $('#show-favourites').click(function(){
    if($('#show-favourites').text() == favourite_text_1){
      $('#show-favourites').text(favourite_text_2);
    } else {
      $('#show-favourites').text(favourite_text_1);
    };
    $('input.favourite').each(function(td, value){
      if(!value.checked){
        checked_element = $(this).data('element');
        $('td' + checked_element).toggle();
      }
    });
  })
})
