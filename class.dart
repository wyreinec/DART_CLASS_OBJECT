/*
  class class_name {
    Properties (Instance Variables)
    Constructor
    Methods (Functions)
    Getter and Setter
  }
*/

/*
  class RekeningBank{
    Properties
      - namaPemilik
      - namaBank
      - saldo
    Methods
      - cekSaldo()
      - transfer()
      - ambilSaldo()
  } 
*/

void main() {
  RekeningBank rekeningMari = new RekeningBank();
  // rekeningBank.cekSaldo(); // kalo ditaro di atas nanti yang keluar saldonya 0 yang di variable lokal, class RekeningBank
  // rekeningMari.transfer();
  // rekeningMari.ambilSaldo();

  //menetapkan nilai (instance variable)
  rekeningMari.namaPemilik = 'Yohana Sri Rejeki';
  rekeningMari.namaBank = 'BTA';
  rekeningMari.saldo = 1000000000;
  print(rekeningMari.namaPemilik);
  print(rekeningMari.namaBank);
  print(rekeningMari.saldo);

  print('---------------------');

  //diambil berdasarkan kondisi saldo saat ini yaitu 1000000000
  rekeningMari
      .cekSaldo(); //ditaro di bawah untuk ambil saldo yang totalnya 1000000000

  //memanggil constructor
  RekeningBank rekeningYohana =
      new RekeningBank(namaPemilik: 'Yohana', namaBank: 'ATB', saldo: 5000000);

  print(rekeningYohana.saldo);
  rekeningYohana.cekSaldo();

  print('---------------------');

  //memanggil si getter and setternya
  RekeningBank rekeningSri =
      new RekeningBank(namaPemilik: 'Sri', namaBank: 'BAT', saldo: 1000000);

  rekeningSri.setNamaPemilik = 'Yohana Sri';
  rekeningSri.setNamaBank = 'BSR';
  rekeningSri.setSaldo = 50000000;

  print(rekeningSri.getNamaPemilik);
  print(rekeningSri.getNamaBank);
  print(rekeningSri.getSaldo);

  print('---------------------');

  //multiple constructor
  RekeningBank rekeningOwo =
      new RekeningBank(namaPemilik: "Owo Mari", saldo: 20000000);
  print(rekeningOwo.getNamaBank);
}

class RekeningBank {
  //properties Instance Variable
  String namaPemilik;
  String namaBank;
  int saldo;

  //getter and setter
  set setNamaPemilik(String nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String bank) {
    this.namaBank = bank;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getNamaPemilik {
    return namaPemilik;
  }

  String get getNamaBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  //constructor
  RekeningBank(
      {this.namaPemilik = '',
      this.namaBank = '',
      this.saldo = 0}); //penggunaan kurung kurawal untuk sebuah opsi
  RekeningBank.Owo(
      {required this.namaPemilik, this.namaBank = 'OWO', required this.saldo});

  cekSaldo() {
    print('Saldo Anda sekarang saat ini : $saldo');
  }

  transfer() {
    print('transfer');
  }

  ambilSaldo() {
    print('ambil saldo');
  }
}
