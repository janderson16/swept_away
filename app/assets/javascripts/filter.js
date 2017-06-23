$(document).ready(function () {
  $('#route_filter').keyup(function() {
    var that = this
    $.each($('.route-name').parent(),
    function(i, val) {
      if ($(val).text().toLowerCase().indexOf($(that).val()) == -1) {
        $('.route-row').eq(i).hide()
      } else {
        $('.route-row').eq(i).show()
      }
    })
  })
});
