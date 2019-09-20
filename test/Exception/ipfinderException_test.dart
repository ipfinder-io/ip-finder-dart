import "package:test/test.dart";

import 'package:ipfinder/src/Exception/ipfinderException.dart';

void main() {
  test('test Exception message', () {
    var mess = "ssssssssssssssssssssssssssssssss";
    var exception = IPfinderException(mess);
    expect(mess, equals(exception.message));
  });
}
