class Coin {
  String _coinAdi;
  String _coinDolasanArz;
  String _coinIslemHacmi;
  String _coinDeger;
  String _coinBilgi;
  String _coinKresmi;
  String _coinBresmi;



  Coin(this._coinAdi, this._coinDolasanArz, this._coinIslemHacmi,
      this._coinDeger,this._coinBilgi, this._coinBresmi, this._coinKresmi);

  String get coinKresmi => _coinKresmi;

  set coinKresmi(String value) {
    _coinKresmi = value;
  }

  String get coinBilgi => _coinBilgi;

  set coinBilgi(String value) {
    _coinBilgi = value;
  }

  String get coinBresmi => _coinBresmi;

  set coinBresmi(String value) {
    _coinBresmi = value;
  }

  String get coinDeger => _coinDeger;

  set coinDeger(String value) {
    _coinDeger = value;
  }

  String get coinIslemHacmi => _coinIslemHacmi;

  set coinIslemHacmi(String value) {
    _coinIslemHacmi = value;
  }

  String get coinDolasanArz => _coinDolasanArz;

  set coinDolasanArz(String value) {
    _coinDolasanArz = value;
  }

  String get coinAdi => _coinAdi;

  set coinAdi(String value) {
    _coinAdi = value;
  }
}