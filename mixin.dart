void main() {
  Sapi sapi = new Sapi();
  sapi.methodMamalia();
  sapi.methodBerkakiEmpat();
  sapi.methodSapi();
}

mixin Mamalia {
  void methodMamalia() {
    print('Method Mamalia');
  }
}

mixin BerkakiEmpat {
  void methodBerkakiEmpat() {
    print('Method Berkaki Empat');
  }
}

//extends hanya mewariskan 1 class saja, kalo lebih dari 1 pakai with
class Sapi with Mamalia, BerkakiEmpat {
  void methodSapi() {
    print("Method Sapi");
  }
}
