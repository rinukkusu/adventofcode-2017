import 'dart:io';
import '_helper.dart';

void main() {
  var memory = new File('data_02')
      .readAsStringSync()
      .split(new RegExp(r'\s'))
      .map((x) => int.parse(x))
      .toList();

  var cycle = 0;
  var foundInHistory = -1;

  while ((foundInHistory = isInHistory(memory)) < 0) {
    history[cycle] = memory.toList();

    var index = findMaxIndex(memory);
    var blocks = memory[index];
    memory[index] = 0;

    var distributionIndex = index + 1;
    while (blocks > 0) {
      if (distributionIndex == memory.length)
        distributionIndex = 0;

      memory[distributionIndex++] += 1;
      blocks--;
    }

    cycle++;
  }

  print(cycle - foundInHistory);
}