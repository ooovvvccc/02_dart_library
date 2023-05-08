void main(){
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');
  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);
  encoded = Uri.encodeComponent(uri);
  assert(
    encoded == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');
  decoded = Uri.decodeComponent(encoded);
  assert(uri == decoded);
  var mri = Uri.parse('https://example.org:8080/foo/bar#frag');
  assert(mri.scheme == 'https');
  assert(mri.host == 'example.org');
  assert(mri.path == '/foo/bar');
  assert(mri.fragment == 'frag');
  assert(mri.origin == 'https://example.org:8080');
  var n = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag',
    queryParameters: {'lang': 'dart'});
  assert(n.toString() == 'https://example.org/foo/bar?lang=dart#frag');
  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});
  assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
  assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');

}