import 'dart:math';

class MathUtils {
  ///generate a random number on a interval 0 - [maxValue]
  ///
  static int generateRandomInt(maxValue) {
    return new Random().nextInt(maxValue);
  }
}
