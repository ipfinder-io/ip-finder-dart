import "package:test/test.dart";

import 'package:ipfinder/ipfinder.dart';

void main() {

  test('test Token', () {
    var token = "asdasdasdasdasdsdasdasdasdasdasdasdasdasd";
    Ipfinder ipfinder = Ipfinder(token);
    expect(token, equals(ipfinder.token));

  });

  test('test Free Token', () {
    Ipfinder ipfinder = Ipfinder();
    var token = "free";
    expect(token, equals(ipfinder.token));
  });

  test('test Bad Token', () {
    try {
         Ipfinder ipfinder = Ipfinder("asd");
    } on IPfinderException catch(e) {
        expect(e.message, 'Invalid IPFINDER API Token');
        return;
    }
     throw new IPfinderException("Expected IPfinderException ");
  });

  test('test BaseUrl', () {
    Ipfinder ipfinder = Ipfinder();
    var cons = "https://api.ipfinder.io/v1/";
    expect(cons, equals(ipfinder.defaultBaseUrl));
  });

  test('test Get Status', () {
    Ipfinder ipfinder = Ipfinder();
    var cons = "info";
    expect(cons, equals(ipfinder.statusPath));
  });

  test('test Get Ranges', () {
    Ipfinder ipfinder = Ipfinder();
    var cons = "ranges/";
    expect(cons, equals(ipfinder.rangesPath));
  });

  test('test Get Firewall', () {
    Ipfinder ipfinder = Ipfinder();
    var cons = "firewall/";
    expect(cons, equals(ipfinder.firewallPath));
  });

  test('test Get Domain"', () {
    Ipfinder ipfinder = Ipfinder();
    var cons = "domain/";
    expect(cons, equals(ipfinder.domainPath));
  });

  test('test Get DomainHistory', () {
    Ipfinder ipfinder = Ipfinder();
    var cons = "domainhistory/";
    expect(cons, equals(ipfinder.domainhPath));
  });

  test('test Get DomainBy', () {
    Ipfinder ipfinder = Ipfinder();
    var cons = "domainby/";
    expect(cons, equals(ipfinder.domainbyPath));
  });

  test('test Address getAddressInfo Exception', () {
    try {
      var ip = "1..0.0.0";
      Ipfinder ipfinder = Ipfinder();
      ipfinder.getAddressInfo(ip);
    } on IPfinderException catch(e) {
        expect(e.message, 'Invalid IPaddress');
        return;
    }
     throw new IPfinderException("Expected IPfinderException ");
  });
  test('test Asn getAsn Exception', () {
    try {
    Ipfinder ipfinder = Ipfinder();
    var asn = "ip";
    ipfinder.getAsn(asn);
    } on IPfinderException catch(e) {
        expect(e.message, 'Invalid asn number');
        return;
    }
     throw new IPfinderException("Expected IPfinderException ");
  });

  test('test Domain getDomainHistory and getDomain Exception', () {
    try {
    Ipfinder ipfinder = Ipfinder();
    var domain = "fsdf";
    ipfinder.getDomain(domain);
    ipfinder.getDomainHistory(domain);
    } on IPfinderException catch(e) {
        expect(e.message, 'Invalid Domain name');
        return;
    }
     throw new IPfinderException("Expected IPfinderException ");
  });

  test('test Firewall Format getFirewall Exception', () {
    try {
    Ipfinder ipfinder = Ipfinder();
    var format = "asdasd";
    ipfinder.getFirewall("as1", format);
    } on IPfinderException catch(e) {
        expect(e.message, 'Invalid Format supported format https://ipfinder.io/docs/?shell#firewall');
        return;
    }
     throw new IPfinderException("Expected IPfinderException ");
  });

  test('test Firewall By getFirewall Exception', () {
    try {
    Ipfinder ipfinder = Ipfinder();
    var country = "DZZ";
    ipfinder.getFirewall(country, "juniper_junos");
    } on IPfinderException catch(e) {
        expect(e.message, 'Invalid Firewall string please use AS number or ISO 3166-1 alpha-2 country');
        return;
    }
     throw new IPfinderException("Expected IPfinderException ");
  });

}
