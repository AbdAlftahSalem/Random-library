class Countries {
  final String name;
  final String nameAr;
  final String dialCode;
  final String currency;
  final String iso2;
  final String iso3;
  final bool isArabianCountry;
  final bool isKhalijiCountry;
  final String flag;
  final int order;

  Countries({
    required this.name,
    required this.nameAr,
    required this.dialCode,
    required this.currency,
    required this.iso2,
    required this.iso3,
    required this.isArabianCountry,
    required this.isKhalijiCountry,
    required this.flag,
    required this.order,
  });

  factory Countries.fromJson(Map<String, dynamic> json) {
    return Countries(
      name: json['name'],
      nameAr: json['name_ar'],
      dialCode: json['dial_code'],
      currency: json['currency'],
      iso2: json['iso2'],
      iso3: json['iso2'],
      isArabianCountry: json['is_arabian_country'],
      isKhalijiCountry: json['is_khaliji_country'],
      flag: json['flag'],
      order: json['order'],
    );
  }
  Map<String, dynamic> toJson() => {
    'name': name,
    'name_ar': nameAr,
    'dial_code': dialCode,
    'currency': currency,
    'iso2': iso2,
    'iso3': iso3,
    'is_arabian_country': isArabianCountry,
    'is_khaliji_country': isKhalijiCountry,
    'flag': flag,
    'order': order,
  };
}