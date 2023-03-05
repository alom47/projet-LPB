$(document).ready(function()
{

  //Show “Login” button only if user and password fields are filled
  $("#username, #password").keyup(function ()
  {
    var username = $('#username').val();
    var password = $('#password').val();
    //correction of the code:
    if (username.trim() != "" && password.trim() != "") {
        $("#login-btn").show();
    } else {
        $("#login-btn").hide();
    }
  });


  //connexion...

  $("#login-btn").on("click", function(e) {
    e.preventDefault();
    const username = $("#username").val();
    const password = $("#password").val();
  
    $.ajax({
      url: "json/users.json",
      type: "GET",
      dataType: "json",
      success: function (data) {
        // Check if the username and password are in the JSON array
        const userData = data.find(user => user.username === username && user.password === password);
  
        if (userData) {
          // Show success message
          alert("Hello" + username);
          // Set session cookie that lasts one day
          var d = new Date();
          d.setTime(d.getTime() + (1 * 24 * 60 * 60 * 1000));
          var expires = "expires="+d.toUTCString();
          document.cookie = "username=" + username + ";" + expires + ";path=/";
        } else {
          // Show error message
          alert("Error: incorrect username/password combination");
        }
      }
    });
  });
      



});
 


























