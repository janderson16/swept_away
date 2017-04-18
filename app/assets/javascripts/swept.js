var API = 'https://data.cityofboston.gov/resource/755x-x44q.json';

$(document).ready(function(){
  var getMap = function() {
    return $.ajax({
      url: API + '/api/v1/posts',
      method: 'GET',
    }).done(function(data){
      for (var i = 0; i < data.length; i++) {
        $('#latest-posts').append('<p class="post">' + data[i].description + '</p>');
      }
    }).fail(function(error){
      console.error(error);
    });
  };

  // on page load
  getPosts();
});
