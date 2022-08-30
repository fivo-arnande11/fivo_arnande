void main() {
  Lingkaran lingkaran = Lingkaran(15);
  print("Luas Lingkaran = ${lingkaran.getluas()} cm");
}
class Lingkaran{
  double phi = 3.14;
  double r ;

  Lingkaran(this.r);
  void setJariJari(double r){
    this.r = r;
  }
  double getluas(){
    return phi * (r * r);
  }
}
