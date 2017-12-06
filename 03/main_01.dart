// input: 289326 
// sqrt(input) = 537.89
// 538 * 538?

import 'dart:math';

void main(List<String> args) {
  var input = int.parse(args[0]);

  var outerRingWidth = sqrt(input).ceil();
  var outerRingLastSquare = pow(outerRingWidth, 2);

  // hacky af please don't read that
  var difference = outerRingLastSquare - input - 1;
  var middle = outerRingWidth / 2 - 1;

  var distance = middle - difference + middle;

  print(distance);
}