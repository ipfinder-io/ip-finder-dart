import "package:test/test.dart";

import 'package:ipfinder/src/Validation/Domainvalidation.dart';

void main() {
  test('test Domain validation', () {
    expect(true, Domainvalidation.validate("google.com"));
  });
}
