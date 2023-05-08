void main() {
  int a = 1;
  double b = 1456.7789;
  print(int.parse('42'));
  print(int.parse('0x42'));
  print(double.parse('0.50'));
  print(num.parse('42'));
  print(num.parse('0x42'));
  print(num.parse('0.50'));
  print(int.parse('44', radix: 16));
  print(42.toString());
  print(a.toString());
  print(b.toStringAsFixed(3));
  print(b.toStringAsPrecision(3));
}
