import 'dart:io';

void main() {
  int faktorial = 1;
  print("Masukkan Nilai Faktorial :");
  int? n = int.parse(stdin.readLineSync()!);
  if (n < 0){
    print(" Angka yang dimasukkan bukan bilangan bulat");
  } else {
    for(int i = 1; i <= n; i++){
      faktorial *= i;
    }
    print("Hasil faktorial dari " + n.toString() + " adalah 20" + faktorial.toString());
  }
}