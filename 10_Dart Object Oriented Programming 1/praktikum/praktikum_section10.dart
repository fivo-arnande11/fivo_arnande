class Hewan {

  static List <int> BeratHewan=[];

  
}
class Mobil{
 int kapasitas=100;
 
List <String> muatan=[];
  void tambahmuatan(List <String> names,List <int> berats ){
int hitungmuatan=0;
  for (int hitung in berats) {
   hitungmuatan+=hitung;
  }
 
if(hitungmuatan < 1000){
  for (String addnames in names) {
  muatan.add(addnames);
   
}
print('Kapasitas terpenuhi');
  for (int addberats in berats ) {
  Hewan.BeratHewan.add(addberats);


  }

 }else{
  print('Melebihi Kapasitas');
 }
 
}
void totalMuatan(){
int sumMuatan=0;
  for (int hitung2 in Hewan.BeratHewan) {
    sumMuatan+=hitung2;
   }
   print('Total Muatan Hewan di Mobil = ${sumMuatan} kg');
}
}
void main(){

// var h2=Mobil();
Mobil h2=new Mobil();
List <String> namaHewans=['Sapi','Kambing','Ayam','Kudanil'];
List <int> beratHewan=[60,20,5,150];
h2.tambahmuatan(namaHewans,beratHewan);
h2.totalMuatan();
print ('Jenis hewan=${h2.muatan}');
print ('Berat hewan=${Hewan.BeratHewan} ');
}