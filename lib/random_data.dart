import 'dart:math';

import 'country_data.dart';
import 'country_model.dart';

class RandomGenerator {
  final Random _random = Random();

  static final RandomGenerator singleton = RandomGenerator._internal();

  RandomGenerator._internal();

  String generateRandomString(int length) {
    String chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return String.fromCharCodes(
      List.generate(
          length, (_) => chars.codeUnitAt(_random.nextInt(chars.length))),
    );
  }

  String generateRandomStringInRange(int minLength, int maxLength) {
    final length = minLength + _random.nextInt(maxLength - minLength + 1);
    return generateRandomString(length);
  }

  String generateRandomStringWithNumbers(int length) {
    String chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return String.fromCharCodes(
      List.generate(length, (_) {
        if (_random.nextBool()) {
          return _random.nextInt(10) + 48; // numbers 0-9
        } else {
          return chars
              .codeUnitAt(_random.nextInt(chars.length - 10) + 10); // letters
        }
      }),
    );
  }

  String generateRandomStringBetweenLetters(
      String startLetter, String endLetter, int length) {
    final start = startLetter.toLowerCase().codeUnitAt(0);
    final end = endLetter.toLowerCase().codeUnitAt(0);
    final range = end - start + 1;
    return String.fromCharCodes(
      List.generate(length, (_) => _random.nextInt(range) + start),
    );
  }

  List<Country> generateRandomCountries(int lengthCountries) {
    final List<Country> randomCountries = [];

    if (lengthCountries > countries.length || lengthCountries == 0) {
      throw Exception('Count exceeds the number of available countries.');
    }

    while (randomCountries.length < lengthCountries) {
      final randomIndex = _random.nextInt(countries.length);
      if (randomCountries
          .where((element) =>
              element.name == Country.fromJson(countries[randomIndex]).name)
          .isEmpty) {
        randomCountries.add(Country.fromJson(countries[randomIndex]));
      }
    }
    return randomCountries;
  }

  List<Country> generateRandomKhalijiCountry(int lengthCountries) {
    final List<Country> khalijiCountries = [];

    if (lengthCountries > 5 || lengthCountries < 1) {
      throw Exception("Length can`t be more 5 or less than 1");
    }
    while (khalijiCountries.length < lengthCountries) {
      for (var i in countries) {
        if (i["is_khaliji_country"] &&
            khalijiCountries
                .where((element) => element.name == i["name"])
                .isEmpty) {
          khalijiCountries.add(Country.fromJson(i));
          break;
        }
      }
    }

    return khalijiCountries;
  }

  List<Country> generateRandomArabianCountry(int lengthCountries) {
    final List<Country> arabianCountries = [];

    if (lengthCountries > 20 || lengthCountries < 1) {
      throw Exception("Length can`t be more 20 or less than 1");
    }
    while (arabianCountries.length < lengthCountries) {
      for (var i in countries) {
        if (i["is_arabian_country"] &&
            arabianCountries
                .where((element) => element.name == i["name"])
                .isEmpty) {
          arabianCountries.add(Country.fromJson(i));
          break;
        }
      }
    }

    return arabianCountries;
  }
}
