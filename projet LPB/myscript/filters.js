$(document).ready(function(){

  //filters the different game and price categories...
  $(".games-filter, #sort-price").on("change", function(){
    var filter = $(this).val();
    $('#product-box .article').each(function(){
    var price = $(this).data('price');
    if(filter == "all") {
       $(".all").show();
       $(".ps4").show();
       $(".ps5").show();
    } else if(filter == "new") {
       $(".all").hide();
       $(".ps4").hide();
       $(".ps5").hide();
    } else if(filter == "ps4") {
       $(".all").hide();
       $(".ps4").show();
       $(".ps5").hide();
    } else if(filter == "ps5") {
       $(".all").hide();
       $(".ps4").hide();
       $(".ps5").show();
    }
    else if(filter == 'above30' && price > 30){
      $(this).show();
      $(this).closest('#product-box').find('.game').show();
      $(this).closest('#product-box').find('img').show();
      $(this).closest('#product-box').find('.product-title').show();
      $(this).closest('#product-box').find('.btn').show();
    }
    else if(filter == 'below30' && price < 30){
      $(this).show();
      $(this).closest('#product-box').find('.game').show();
      $(this).closest('#product-box').find('img').show();
      $(this).closest('#product-box').find('.product-title').show();
      $(this).closest('#product-box').find('.btn').show();
    }
    else{
      $(this).hide();
      $(this).closest('#product-box').find('.game').hide();
      $(this).closest('#product-box').find('img').hide();
      $(this).closest('#product-box').find('.product-title').hide();
      $(this).closest('#product-box').find('.btn').hide();
    }
  });
});



  //the search bar responds but then it dissapears...
  $("#searchbar").on("keyup", function() {
    var searchTerm = $(this).val();
    $("div").each(function() {
      if ($(this).text().toLowerCase().indexOf(searchTerm.toLowerCase()) >= 0) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });





  
















});






