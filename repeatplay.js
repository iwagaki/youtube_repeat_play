if (location.href.match(/http:\/\/www\.youtube\.com\/watch\?v=([^&]+)/)) {
  var url = "http://www.youtube.com/v/" + RegExp.$1 + "?version=3&loop=1&autoplay=1&playlist=" + RegExp.$1;
//  console.dir("location.href=" + location.href + ", url=" + url);
  var html = '<html><head><style type="text/css">body { margin: 0; padding: 0; }</style></head><body><iframe id="ytplayer" type="text/html" width="100%" height="100%" src="' + url + '" frameborder="0" scrolling="0" /></body>';
  top.location.href = 'data:text/html;charset=utf-8,' + encodeURIComponent(html);
}
