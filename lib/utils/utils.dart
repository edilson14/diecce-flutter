import 'dart:math';

class MathUtils {
  ///generate a random number on a interval 0 - [maxValue]
  ///
  static int generateRandomInt(int maxValue) {
    return new Random().nextInt(maxValue);
  }
}
