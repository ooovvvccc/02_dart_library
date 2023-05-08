void main() {
  var a = <String>[];
  assert(a.isEmpty);
  var ball = ['basketball', 'pingpong'];
  ball.add('football');
  ball.addAll(['badminton', 'volleyball']);
  assert(ball.length == 5);
  assert(ball[0] == 'basketball');
  assert(ball.indexOf('pingpong') == 1);
  ball.sort((a, b) => a.compareTo(b));
  assert(ball[0] == 'badminton');
  var Index = ball.indexOf('football');
  ball.removeAt(Index);
  assert(ball.length == 4);
  ball.clear();
  assert(ball.isEmpty);
  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));
  var food = <String>{};
  food.addAll(['apple', 'banana', 'dumpling']);
  var food1=Set.from(['apple','stawberry']);
 
  food.add('apple');
  assert(food.length == 3);
  food.remove('apple');
  var m = Set.from([79, 22, 54]);
  var n={
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
  };
var hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};

var searchTerms = Map();
var nobleGases = Map<int, String>();
nobleGases = {54:'xenon'};
assert(nobleGases[54] == 'xenon');
assert(nobleGases.containsKey(54));
nobleGases.remove(54);
assert(!nobleGases.containsKey(54));
var keys = hawaiianBeaches.keys;
assert(keys.length == 3);
assert(Set.from(keys).contains('Oahu'));
var values = hawaiianBeaches.values;
assert(values.length == 3);
assert(values.any((v) => v.contains('Waikiki')));
assert(hawaiianBeaches.containsKey('Oahu'));
assert(!hawaiianBeaches.containsKey('Florida'));
var coffees = <String>[];
var teas = ['green', 'black', 'chamomile', 'earl grey'];
assert(coffees.isEmpty);
assert(teas.isNotEmpty);
teas.forEach((tea) => print('I drink $tea'));
hawaiianBeaches.forEach((k, v) {
  print('I want to visit $k and swim at $v');
});
var teas1 = ['green', 'black', 'chamomile', 'earl grey'];
var loudTeas = teas1.map((tea) => tea.toUpperCase());
loudTeas.forEach(print);
loudTeas = teas.map((tea) => tea.toUpperCase()).toList();
bool isDecaffeinated(String teaName) => teaName == 'chamomile';
var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
assert(teas.any(isDecaffeinated));
assert(!teas.every(isDecaffeinated));
}
