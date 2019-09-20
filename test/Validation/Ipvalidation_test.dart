import "package:test/test.dart";

import 'package:ipfinder/src/Validation/Ipvalidation.dart';

void main() {
  test('test IP validation', () {
    expect(true, Ipvalidation.validate("1.0.0.0"));
    expect(true, Ipvalidation.validate("5.0.0.0"));
  });
}
