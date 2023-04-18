void main(List<String> args) {
  List<int> aList = range['A']!;
  int value1 = range['A']![0];
  int value2 = range['A']![1];
  double value = (value2 - value1) / 2;

  print(aList);
  print(value);
}

Map<String, List<int>> range = {
  'A': [20, 29],
  'B': [29, 30],
  'C': [30, 39]
};
