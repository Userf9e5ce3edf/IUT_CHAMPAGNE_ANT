
$(document).ready(function(){

  // alert('Coucou');

  $('#form_inscription').submit(function (event) {
    event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

    var formContent = $(this).serialize();

    $.ajax(
        {
        method: "POST",
        url : "/4DACTION/wForm_Inscription",
        data: formContent
        }
      )
      .done(
        function(response){
          if (response.error_code == 0) {
            // location.reload(true);
            window.location = '/home.shtml';
            // alert('OK');
          }
          else {
            alert(response.error_message);
          }
        }
      );
});

$('#form_moncompte').submit(function (event) {
  event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

  var formContent = $(this).serialize();

  $.ajax(
      {
      method: "POST",
      url : "/4DACTION/wForm_MonCompte",
      data: formContent
      }
    )
    .done(
      function(response){
        if (response.error_code == 0) {
          // location.reload(true);
          window.location = '/home.shtml';
          // alert('OK');
        }
        else {
          alert(response.error_message);
        }
      }
    );
});


$('#form_connection').submit(function (event) {
  event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

  var formContent = $(this).serialize();

  $.ajax(
      {
      method: "POST",
      url : "/4DACTION/wForm_Connexion",
      data: formContent
      }
    )
    .done(
      function(response){
        if (response.error_code == 0) {
          // location.reload(true);
          window.location = '/home.shtml';
          // alert('OK');
        }
        else {
          alert(response.error_message);
        }
      }
    );
});

$('#form_participation').submit(function (event) {
  event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

  var formContent = $(this).serialize();

  $.ajax(
      {
      method: "POST",
      url : "/4DACTION/wForm_Participation",
      data: formContent
      }
    )
    .done(
      function(response){
        if (response.error_code == 0) {
          // location.reload(true);
          window.location = '/home.shtml';
          // alert('OK');
        }
        else {
          alert(response.error_message);
        }
      }
    );
});

$('#form_crediter').submit(function (event) {
  event.preventDefault();// Pour éviter d'exectuer l'action et du coup de changer de page

  var formContent = $(this).serialize();

  $.ajax(
      {
      method: "POST",
      url : "/4DACTION/wForm_Crediter",
      data: formContent
      }
    )
    .done(
      function(response){
        if (response.error_code == 0) {
          // location.reload(true);
          window.location = '/home.shtml';
          // alert('OK');
        }
        else {
          alert(response.error_message);
        }
      }
    );
});



});