import 'dart:io';

void main() {
  var sum = new File('data_02')
      .readAsLinesSync()
      .map((x) => x
          .split(new RegExp(r'\s'))
          .map((word) {
            var chars = word.split('')..sort();
            return chars.join();
          })
          .toList()
          ..sort())
      .map((List<String> list) {
        for (int i = 0; i < list.length - 1; i++) {
          for (int j = 1; j < list.length; j++) {
            if (i != j && list[i] == list[j])
              return false;
          }
        }
        return true;
      })
      .toList()
      .where((x) => x == true)
      .length;

  print(sum);
}
