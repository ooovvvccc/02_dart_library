void main(){
var now = DateTime.now();
var y2k = DateTime(2000);
y2k = DateTime(2000, 1, 2); 
y2k = DateTime.utc(2000); 
y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
y2k = DateTime.parse('2000-01-01T00:00:00Z');
var sameTimeLastYear = now.copyWith(year: now.year - 1);
var y3k = DateTime.utc(2000);
assert(y3k.millisecondsSinceEpoch == 946684800000);
var unixEpoch = DateTime.utc(1970);
assert(unixEpoch.millisecondsSinceEpoch == 0);
y2k = DateTime.utc(2000);
var y2001 = y2k.add(const Duration(days: 366));
assert(y2001.year == 2001);
var december2000 = y2001.subtract(const Duration(days: 30));
assert(december2000.year == 2000);
assert(december2000.month == 12);
var duration = y2001.difference(y2k);
assert(duration.inDays == 366); 

}