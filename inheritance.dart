void main() {
  print('Mobil');
  Mobil avanta = new Mobil(roda: 4);
  avanta.klakson();
  avanta.jumlahRoda(avanta.roda);

  print('Motor');
  Motor beat = new Motor(roda: 2);
  beat.jumlahRoda(beat.roda);
}

class Kendaraan {
  String suaraKlakson = 'tiiiiinnnnn';

  void klakson() {
    print(suaraKlakson);
  }

  void jumlahRoda(int roda) {
    print(roda);
  }
}

class Mobil extends Kendaraan {
  int roda;
  Mobil({required this.roda});

  @override // untuk mengubah method
  void jumlahRoda(int roda) {
    print('Jumlah roda mobil: $roda');
    super.jumlahRoda(roda); // memanggil jumlah roda yang dimiliki parentnya
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
}
