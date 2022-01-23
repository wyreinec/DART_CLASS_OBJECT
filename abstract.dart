void main() {
  //abstract class tidak bisa dibuat object, digunakan untuk jadi sebuat kerangka yang diturunkan ke kelas lainnya

  print('Mobil');
  Mobil avanta = new Mobil(roda: 4);
  avanta.klakson();
  avanta.jumlahRoda(avanta.roda);
  avanta.berjalan;

  print('Motor');
  Motor beat = new Motor(roda: 2);
  beat.jumlahRoda(beat.roda);
  beat.berjalan();
}

abstract class Kendaraan {
  String suaraKlakson = 'tiiiiinnnnn';

  void klakson() {
    print(suaraKlakson);
  }

  void jumlahRoda(int roda) {
    print(roda);
  }

  void
      berjalan(); //error karena tidak ada kelas berjalan di dalam class Mobil, maka
}

class Mobil extends Kendaraan {
  int roda;
  Mobil({required this.roda});

  @override // untuk mengubah method
  void jumlahRoda(int roda) {
    print('Jumlah roda mobil: $roda');
    super.jumlahRoda(roda); // memanggil jumlah roda yang dimiliki parentnya
  }

  @override
  void berjalan() {
    print('Mobil berjalan');
  }
}

class Motor extends Kendaraan {
  int roda;
  Motor({required this.roda});

  @override
  void jumlahRoda(int roda) {
    print('Jumlah roda motor : $roda');
    super.jumlahRoda(roda);
  }

  @override
  void berjalan() {
    print('Motor berjalan');
  }
}
