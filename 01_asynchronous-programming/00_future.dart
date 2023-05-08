import 'dart:async';
String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}
Future<String> fetchUserOrder() =>
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );
Future<void> fetchUserOrder1() {
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

Future<String> createOrderMessage1() async {
  var order = await fetchUserOrder4();
  return 'Your order is: $order';
}
Future<String> fetchUserOrder4() =>
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );
Future<void> main() async {
  print(createOrderMessage());
  fetchUserOrder1();
  print('Fetching user order...');
  print(await createOrderMessage1());
}
