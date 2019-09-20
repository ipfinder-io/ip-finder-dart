import "package:test/test.dart";

import 'package:ipfinder/src/Validation/Asnvalidation.dart';

void main() {
  test('test Asn validation', () {
    expect(true, Asnvalidation.validate("as1"));
  });
}
