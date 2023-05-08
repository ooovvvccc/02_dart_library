import 'dart:html';

void main() async {
  var url = 'mmm';
  var jsonUri = 'nnn';
  String pageHtml = await HttpRequest.getString(url);
  try {
    var data = await HttpRequest.getString(jsonUri);
  } catch (e) {}
  HttpRequest req = await HttpRequest.request(
    url,
    method: 'HEAD',
  );
  if (req.status == 200) {
    print('hh');
  }
}
