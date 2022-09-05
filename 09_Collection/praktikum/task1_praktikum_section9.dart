void main() async{
  List<int> listData = [1,3,5,7,9]; 
  print("List Data Awal = $listData dikali 5 = ");
  int Pengali = 5;
  
 int hasil(int listdata , int Pengali){
  return listdata*Pengali;
}
  await Future.delayed(Duration(seconds: 2), () {
    for (int f = 0; f < listData.length; f++) {
      print("List Data baru = ${hasil(listData[f], Pengali)}");
    }
  });
}