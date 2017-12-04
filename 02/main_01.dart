import 'dart:io';

void main() {
  var sum = new File('data_01')
      .readAsLinesSync()
      .map((x) => x
          .split(new RegExp(r'\s'))
          .map((i) => int.parse(i))
          .toList()
          ..sort())
      .map((List<int> x) => x.last - x.first)
      .toList()
      .reduce((x, y) => x + y);

  print(sum);
}
