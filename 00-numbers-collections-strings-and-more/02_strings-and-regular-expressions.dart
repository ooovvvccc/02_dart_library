void main() {
  assert('food is delicious'.contains('food'));
  assert('food is delicious'.startsWith('food'));
  assert('food is delicious'.endsWith('delicious'));
  assert('food is delicious'.indexOf('is') == 5);
  assert('food is delicious'.substring(5, 7) == 'is');
  var a = 'food is delicious'.split(' ');
  assert(a.length == 3);
  assert(a[0] == 'food');
  assert('food is delicious'[0] == 'f');
  for (final char in 'food'.split('')) {
    print(char);
  }
  var b = 'food is delicious'.codeUnits.toList();
  print(b);
  assert('food is delicious'.toUpperCase() == 'FOOD IS DELICIOUS');
  assert('FOOD IS DELICIOUS'.toLowerCase() == 'food is delicious');
  assert('  hello  '.trim() == 'hello');
  assert(''.isEmpty);
  assert('  '.isNotEmpty);
  var c = "name,hello to my world";
  var d = c.replaceAll(RegExp('name'), 'cxy');
  assert(c != d);
  var sb = StringBuffer();
  sb
    ..write('cxy ')
    ..writeAll(['love', 'delicious', 'food'], ' ')
    ..write('.');
  var SB = sb.toString();
  assert(SB == 'cxy love delicious food.');
  var numbers = RegExp(r'\d+');
  var allCharacters = 'fifteen to twenty years';
  var someDigits = '15 to 20 years';
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'XX to XX years');
  assert(numbers.hasMatch(someDigits));
  for (final match in numbers.allMatches(someDigits)) {
    print(match.group(0));
  }
}
