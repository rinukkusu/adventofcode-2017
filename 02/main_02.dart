import 'dart:io';

void main() {
  var sum = new File('data_02')
      .readAsLinesSync()
      .map((x) => x
          .split(new RegExp(r'\s'))
          .map((i) => int.parse(i))
          .toList()
          ..sort((x, y) => y - x))
      .map((List<int> list) {
        for (int i = 0; i < list.length - 1; i++) {
          for (int j = 1; j < list.length; j++) {
            if (list[i] % list[j] == 0 && i != j)
              return list[i] / list[j];
          }
        }
      })
      .toList()
      .reduce((x, y) => x + y);

  print(sum);
}