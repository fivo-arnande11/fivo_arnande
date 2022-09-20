class BangunRuang {
  int panjang = 10;
  int lebar = 5;
  int tinggi = 10;

  void volume() {}
}

class Kubus extends BangunRuang {
  int sisi = 8;
  @override
  int volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  @override
  int volume() {
    return panjang * lebar * tinggi;
  }
}

void main(List<String> args) {
  var kubus = Kubus();
  print('Volume kubus = ${kubus.volume()}');

  var balok = Balok();
  print('Volume balok = ${balok.volume()}');
}
