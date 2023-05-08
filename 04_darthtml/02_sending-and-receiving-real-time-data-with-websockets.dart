import 'dart:html';
void main(){
  var ws = WebSocket('ws://echo.websocket.org');
  ws.send('Hello from Dart!');
  ws.onMessage.listen((MessageEvent e) {
  print('Received message: ${e.data}');
});

}