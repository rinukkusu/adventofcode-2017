import 'dart:io';

void main() {
  var data = new File('data')
      .readAsStringSync()
      .split('')
      .map((x) => int.parse(x))
      .toList();

  var sum = 0;

  for (var i = 0, j = 0; i < data.length; i++) {
    j = i+1;

    if (data.length == j)
      j = 0;

    if (data[i] == data[j])
      sum += data[i];
  }

  print(sum);
}
