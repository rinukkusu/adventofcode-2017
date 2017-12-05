import 'dart:io';

void main() {
  var jumpList = new File('data_02')
      .readAsLinesSync()
      .map((x) => int.parse(x))
      .toList();

  var offset = 0;
  var steps = 0;

  while (offset < jumpList.length) {
    var nextInstruction = jumpList[offset];
    jumpList[offset] = nextInstruction >= 3 
        ? nextInstruction - 1 
        : nextInstruction + 1;

    offset = offset + nextInstruction;

    steps++;
  }

  print(steps);
}
