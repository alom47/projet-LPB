<?php   require_once "navbar.php";

?>

  
    <div class="container-fluid text-center">    
      <div class="row content">
        <div class="col-sm-11 text-left">
          <div style="text-align: center;">
            <h1><p>The <b>future</b> of gaming.</p></h1>
            <h3><p style="font-style: italic;">The hottest games that you can get under one roof at the best possible price!</p></h3>
            <hr>    
          </div>

          <!-- connexion -->
          <div class="row" style="text-align: center;">
            <div style="text-align: center;">
              <div id="connexionLogin">
                <form autocomplete="off"  id="loginForm" class="form-login" action="login.php" method="POST">

                  <label for="username">Username:</label>
                  <input type="text" name="username" id="username" placeholder="enter username" />

                  <label for="password">Password:</label>
                  <input type="password" name="pwd" id="password" placeholder="enter password"/>

                  <button id="login-btn" class="loginBtn" style="display: none;">Login</button>

                  <div style="margin: 100px;">
                    <p>Not yet a member?</a><br>
                    <button><a href="register.php" style="text-decoration: none; color: black">Register</a><br></button>
                    </p>

                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember me</label>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<?php
  require_once "footer.php";

?>