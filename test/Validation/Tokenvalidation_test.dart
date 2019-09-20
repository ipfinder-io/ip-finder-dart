import "package:test/test.dart";

import 'package:ipfinder/src/Validation/Tokenvalidation.dart';

void main() {
  test('test Token validation', () {
    expect(
        true,
        Tokenvalidation.validate(
            "sadddddddddddddddddddddddddddddddddddddddddddddd"));
  });
}
