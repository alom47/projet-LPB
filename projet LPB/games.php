<?php
    require_once "navbar.php";

?>


        <div class="container" style="text-align: center;">
            <!-- banner -->
            <div class="row">
                <div class="col-md-12">
                    <div id="banner" style="background:black;padding:5px">
                        <img src="imglogo/joystickbanner.png" alt="joystick" class="banner">
                    </div>
                </div>
            </div>
            <!-- filters -->
            <div class="row">
                <div class="col-md-12" style="text-align: center;">
                    <div id="filters">

                        <div class="sort">

                            <div class="filter-container">
                                <div id="dropdown-filter">
                                    <select id="sort-price" class="games-filter">
                                        <option value="all" selected>Games</option>
                                        <option value="ps4">PS4 Games</option>
                                        <option value="ps5">PS5 Games</option>
                                        <option value="below30">Ascending price</option>
                                        <option value="above30">Descending price</option>
                                    </select>
                                </div>
                                <input type="text" id="searchbar" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <!-- main -->
                    <div id="smartcart" class="shop-content">
                        <!--Box 1-->
                        <div id="product-box" class="col-md-3">
                            <div class="game all ps5">
                            <img src="img/Demons Souls.jpg" alt="Demons Souls" class="product-img">
                            <h4 class="product-title">Demons Souls</h4>
                            <span class="article" data-price="50">€54.99</span>
                            <!--Replace "yourcarturl" with the URL of your shopping cart page, "Product Name" with the name of the item you're selling, "Price" with the cost of the item, and "Currency Code" with the currency code for the currency you're selling in.-->
                            <button type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>    
                        </div>
                                

                        <!--Box 2-->
                                            
                        <div id="product-box" class="col-md-3">
                            <div class="game all ps5">
                            <img src="img/Forspoken.jpg" alt="Forspoken" class="product-img">
                            <h4 class="product-title">Forspoken</h4>
                            <span class="article" data-price="50">€69.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>            
                            

                        <!--Box 3-->
                        <div id="product-box" class="col-md-3">
                            <div class="game all ps4">
                            <img src="img/Grand Theft Auto V.jpg" alt="Grand Theft Auto 5" class="product-img">
                            <h4 class="product-title">Grand Theft Auto V</h4>
                            <span class="article" data-price="20">€16.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>

                        <!--Box 4-->
                        <div id="product-box" class="col-md-3">
                            <div class="game all ps4">
                            <img src="img/Hogwarts Legacy Deluxe Edition.jpg" alt="Hogwarts Legacy Deluxe Edition" class="product-img">
                            <h4 class="product-title">Hogwarts Legacy Deluxe Edition</h4>
                            <span class="article" data-price="50">€60</span>
                            <button id="trigger-cart"type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>

                        <!--Box 5-->
                        <div id="product-box" class="col-md-3">
                            <div class="game all ps4">
                            <img src="img/Horizon Forbidden West Launch Edition.jpg" alt="Horizon Forbidden West Launch Edition" class="product-img">
                            <h4 class="product-title">Horizon Forbidden West Launch Edition</h4>
                            <span class="article" data-price="50">€39.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>

                        <!--Box 6-->
                        <div id="product-box" class="col-md-3">
                            <div  class="game all ps4">
                            <img src="img/Horizon Zero Dawn COMPLETE EDITION.jpg" alt="Horizon Zero Dawn COMPLETE EDITION" class="product-img">
                            <h4 class="product-title">Horizon Zero Dawn COMPLETE EDITION</h4>
                            <span class="article" data-price="20">€18.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>

                        <!--Box 7-->
                        <div id="product-box" class="col-md-3">
                            <div  class="game all ps4">
                            <img src="img/It Takes Two.jpg" alt="It Takes Two" class="product-img">
                            <h4 class="product-title">It Takes Two</h4>
                            <span class="article" data-price="20">€19.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>

                        <!--Box 8-->
                        <div id="product-box" class="col-md-3">
                            <div  class="game all ps5">
                            <img src="img/Marvels SpiderMan Miles Morales Ultimate Edition.jpg" alt="Marvels SpiderMan Miles Morales Ultimate Edition" class="product-img">
                            <h4 class="product-title">Marvels SpiderMan Miles Morales</h4>
                            <span class="article" data-price="50">€69.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                             onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>

                        <!--Box 9-->
                        <div id="product-box" class="col-md-3">
                            <div  class="game all ps4">
                            <img src="img/Marvels SpiderMan.jpg" alt="Marvels SpiderMan" class="product-img">
                            <h4 class="product-title">Marvels SpiderMan</h4>
                            <span class="article" data-price="20">€14.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>

                        <!--Box 10-->
                        <div id="product-box" class="col-md-3">
                            <div class="game all ps4">
                            <img src="img/Red Dead Redemption 2.jpg" alt="Red Dead Redemption 2" class="product-img">
                            <h4 class="product-title">Red Dead Redemption 2</h4>
                            <span class="article" data-price="20">€18.99</span>
                            <button id="trigger-cart" type="button" class="btn btn-primary"
                            onclick="addToCart(product_id)">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        
<?php
    require_once "footer.php";

?>