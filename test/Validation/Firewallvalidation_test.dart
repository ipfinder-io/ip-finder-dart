import "package:test/test.dart";

import 'package:ipfinder/src/Validation/Firewallvalidation.dart';

void main() {
    test('test Firewall validation', () {
        expect(true, Firewallvalidation.validate("as1", "juniper_junos"));
        expect(true, Firewallvalidation.validate("DZ", "juniper_junos"));
    });
}
