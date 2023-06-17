import 'package:random_lib/random_lib.dart' as random_lib;

import 'random_data.dart';

void main(List<String> arguments) {
  print(RandomStringGenerator.singleton.generateRandomString(5));
  print(RandomStringGenerator.singleton.generateRandomStringBetweenLetters("a", "d", 10));
  print(RandomStringGenerator.singleton.generateRandomStringInRange(4, 10));
  print(RandomStringGenerator.singleton.generateRandomStringWithNumbers(4));
}
