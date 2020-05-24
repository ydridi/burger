// Make sure we wait to attach our handlers until the DOM is fully loaded.
$(function() {
    $(".devoured").on("click", function(event) {
      var id = $(this).data("id");
      var devoured = 1;
  
      var newBurgerState = {
        devoured: devoured
      };
  
      // Send the PUT request.
      $.ajax("/api/burgers/" + id, {
        type: "PUT",
        data: newBurgerState
      }).then(
        function() {
          // Reload the page to get the updated list
          location.reload();
        }
      );
    });
  
    $(".mainBtn").on("click", function(event) {
      // Make sure to preventDefault on a submit event.
      event.preventDefault();

      var newBurger = {
        burger_name: $("#ca").val().trim(),
        devoured: 0
      };
      // Send the POST request.
      $.ajax("/api/burgers", {
        type: "POST",
        data: newBurger
      }).then(
        function() {
         // Reload the page to get the updated list
          location.reload();
        });
    });
});