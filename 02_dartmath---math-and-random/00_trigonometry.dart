import 'dart:math';
void main(){
  assert(cos(pi) == -1.0);
var degrees = 30;
var radians = degrees * (pi / 180);
var sinOf30degrees = sin(radians);
assert((sinOf30degrees - 0.5).abs() < 0.01);

}