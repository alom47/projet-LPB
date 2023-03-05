$(document).ready(function(){

  //Show “Register” button only if input fields are filled...
  $("#username, #email, #password, passwordTwo").keyup(function() {
    var newusername = $("#username").val();
    var newemail = $('#email').val();
    var newpasswordOne = $("#password").val();
    var newpasswordTwo = $("#passwordTwo").val();
    if (newusername.trim() != "" && newemail.trim() != "" && newpasswordOne.trim() != "" && newpasswordTwo.trim() != "") {
      $("#register-btn").show();
    } else {
      $("#register-btn").hide();
    }
  });














































});






