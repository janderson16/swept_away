$(document).ready(function () {

  var $routes = $('.route');

  $('#route_filter').on('keyup', function() {
      var currentName = this.value;

      $routes.each(function (index, route){
        $route = $(route);
        if ($route.html()..toLowerCase().indexOf(currentName) !== -1) {
          $route.show();
        } else {
          $route.hide();
        }
      });
    });
  });
//
// $(document).ready(function () {
//   $('#route_filter').keyup(function() {
//     var that = this
//     $.each($('.route-name').parent(),
//     function(i, val) {
//       if ($(val).text().toLowerCase().indexOf($(that).val()) == -1) {
//         $('.route-row').eq(i).hide()
//       } else {
//         $('.route-row').eq(i).show()
//       }
//     })
//   })
// });
