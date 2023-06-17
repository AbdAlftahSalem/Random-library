# Radnom library

The Random library is a Dart library for generated random ( .... ).

## Installation

dependencies:
  random_library:

```bash
flutter pub add random_library
```

## Usage

```python
import 'random_data.dart';


 // Generate a random string 

 RandomStringGenerator.singleton.generateRandomString(5);
 RandomStringGenerator.singleton.generateRandomStringBetweenLetters("a", "d", 10);
 RandomStringGenerator.singleton.generateRandomStringInRange(4, 10);
 RandomStringGenerator.singleton.generateRandomStringWithNumbers(4);
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.
