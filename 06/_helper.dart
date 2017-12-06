Map<int, List<int>> history = new Map<int, List<int>>();

int findMaxIndex(List<int> memory) {
  var index = -1;
  var value = 0;

  for (int i = 0; i < memory.length; i++) {
    if (memory[i] > value) {
      index = i;
      value = memory[i];
    }
  }

  return index;
}

int isInHistory(List<int> memory) {
  for (var i = 0; i < history.length; i++) {
    var historyItem = history[i];

    if (listsMatch(historyItem, memory))
      return i;
  }

  return -1;
}

bool listsMatch<T>(List<T> a, List<T> b) {
  if (a.length != b.length)
    return false;

  var match = true;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i])
      match = false;
  }

  return match;
}