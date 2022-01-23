/*
Challenge 5
  1. Buatlah class E-Wallet dengan ketentuan sebagai berikut:
    # Properties:
      - namaPemilik
      - saldo
      - mutasi // riwayat pembayaran 
    # Methods:
      - Getters and Setters untuk setiap properties
      - transfer() // dari rekening pemilik
      - request() // ke rekening pemilik 
*/

void main() {
  eWallet dompetMari = new eWallet('Mari');

  print('Nilai Awal');
  print(dompetMari.getPemilik);
  print(dompetMari.getSaldo);
  print(dompetMari.getMutasi);

  print('Request');
  dompetMari.request(500000);
  print(dompetMari.getSaldo);
  print(dompetMari.getMutasi);

  print('Transfer');
  dompetMari.transfer(20000);
  print(dompetMari.getSaldo);
  print(dompetMari.getMutasi);
}

class eWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getPemilik {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNamaPemilik(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldo) {
    this.saldo = saldo;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  eWallet(this.namaPemilik);

  transfer(int nominal) {
    saldo = saldo - nominal; //atau bisa ditulis saldo -= nominal
    addMutasi('Transfer $nominal');
  }

  request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}
