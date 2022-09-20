class Matematika {
  void hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x = 15;
  int y = 25;

  @override
  int hasil() {
    int i = 0;
    for (i = y; i % x != 0 || i % y != 0; i++);
    return i;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x = 25;
  int y = 15;

  @override
  int hasil() {
    int i = 0;
    while (x > 0) {
      i = y % x;
      y = x;
      x = i;
    }
    return y;
  }
}

void main(List<String> args) {
  var kpk = KelipatanPersekutuanTerkecil();
  int x_kpk = kpk.x;
  int y_kpk = kpk.y;
  int hasil_kpk = kpk.hasil();
  print(
      'Kelipatan Persekutuan Terkecil dari $x_kpk dan $y_kpk adalah $hasil_kpk');

  var fpb = FaktorPersekutuanTerbesar();
  int x_fpb = fpb.x;
  int y_fpb = fpb.y;
  int hasil_fpb = fpb.hasil();
  print('Faktor Persekutuan Terbesar dari $x_fpb dan $y_fpb adalah $hasil_fpb');
}
