import 'dart:math';

class RandomStringGenerator {
  static final RandomStringGenerator _instance =
      RandomStringGenerator._internal();
  final Random _random = Random();

  static final RandomStringGenerator singleton =
      RandomStringGenerator._internal();

  RandomStringGenerator._internal();

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
}
