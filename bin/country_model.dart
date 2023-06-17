class Country {
  final String name;
  final String nameAr;
  final String dialCode;
  final String currency;
  final String iso2;
  final String iso3;
  final bool isArabianCountry;
  final bool isKhalijiCountry;

  Country({
    required this.name,
    required this.nameAr,
    required this.dialCode,
    required this.currency,
    required this.iso2,
    required this.iso3,
    required this.isArabianCountry,
    required this.isKhalijiCountry,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      nameAr: json['name_ar'],
      dialCode: json['dial_code'],
      currency: json['currency'],
      iso2: json['iso2'],
      iso3: json['iso2'],
      isArabianCountry: json['is_arabian_country'],
      isKhalijiCountry: json['is_khaliji_country'],
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
  };
}