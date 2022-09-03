void main() async {
  var list = [];
  list.add("1,2");
  list.add("1,3");
  list.add("1,4");
  list.add("1,5");
  print("[$list]");

  for (var list in list){
    print([list]);
  }
}