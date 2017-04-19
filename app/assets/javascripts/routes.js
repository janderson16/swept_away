$(document).ready(function () {

  var $routes = $('.route');

  $('#route_filter').on('keyup', function() {
      var currentName = this.value;

      $routes.each(function (index, route){
        $route = $(route);
        if ($route.html().indexOf(currentName) !== -1) {
          $route.show();
        } else {
          $route.hide();
        }
      });
    });
  });
