var m = location.href.match(/https?:\/\/www\.youtube\.com\/watch\?v=([^&]+)/);
if (m) {
  var id = m[1];
  var url = 'https://www.youtube.com/embed/' + id + '?autoplay=1&loop=1&rel=0&showinfo=0&playlist=' + id;
  document.getElementById('player-container').innerHTML =
    '<iframe id="ytplayer" type="text/html" width="100%" height="100%" src="' + url + '" frameborder="0" allowfullscreen>';
}
