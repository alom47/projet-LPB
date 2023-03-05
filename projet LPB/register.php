<?php
  require_once "navbar.php";

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
              <div id="connexionRegister">
                <form autocomplete="off"  id="registerForm" class="form-register" action="register.php" method="POST">

                  <label for="username">Username:</label>
                  <input type="text" name="username" id="username" placeholder="enter username" /><br>
                  
                  <label for="username">Email:</label>
                  <input type="text" name="email" id="email" placeholder="enter email" /><br>
                  
                  <label for="password">Password:</label>
                  <input type="password" name="pwd" id="password" placeholder="enter password"/><br>

                  <label for="password">Confirm password:</label>
                  <input type="password" name="pwdTwo" id="passwordTwo" placeholder="confirm password"/><br>

                  <button id="register-btn" class="registerBtn" style="display: none;">Register</button>

                  <div style="margin: 100px;">
                  <p>Already a member?<br>
                    <button><a href="login.php" style="text-decoration: none; color: black">Login</a></button><br>
                  </p>
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