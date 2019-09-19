library ipfinder;

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:ipfinder/Validation/Asnvalidation.dart';
import 'package:ipfinder/Validation/Domainvalidation.dart';
import 'package:ipfinder/Validation/Firewallvalidation.dart';
import 'Validation/Ipvalidation.dart';
import 'package:ipfinder/Validation/Tokenvalidation.dart';
import 'package:ipfinder/Exception/ipfinderException.dart';
import 'package:ipfinder/data/StatusResponse.dart';
import 'package:ipfinder/data/AsnResponse.dart';
import 'package:ipfinder/data/DomainByResponse.dart';
import 'package:ipfinder/data/DomainHtResponse.dart';
import 'package:ipfinder/data/IPResponse.dart';
import 'package:ipfinder/data/RangeResponse.dart';

/// The Ipfinder API class.
class Ipfinder {
  /// DEFAULT BASE URL
  final String defaultBaseUrl = "https://api.ipfinder.io/v1/";

  /// The free token.
  final String defaultApiToken = "free";

  /// DEFAULT FORMAT.
  final String format = "json";

  /// service status path.
  final String statusPath = "info";

  /// IP Address Ranges path.
  final String rangesPath = "ranges/";

  /// Firewall path.
  final String firewallPath = "firewall/";

  /// Get Domain IP path.
  final String domainPath = "domain/";

  /// Get Domain IP history path.
  final String domainhPath = "domainhistory/";

  /// Domain By ASN, Country,Ranges path.
  final String domainbyPath = "domainby/";

  String token;

  String baseUrl;

  List data;

  /// Constructor [Ipfinder].
  ///
  /// [token] string or null  add your token
  /// [baseUrl] string or null add proxy pass
  /// Throws an [IPfinderException] if the token len <= 25
  Ipfinder([String token, String baseUrl]) {
    if (token == null) {
      this.token = defaultApiToken;
    } else {
      Tokenvalidation.validate(token);
      this.token = token;
    }
    if (baseUrl == null) {
      this.baseUrl = defaultBaseUrl;
    } else {
      this.baseUrl = baseUrl;
    }
    // this.token = token;
    // this.baseUrl = baseUrl;
  }

  /// call to server.
  ///
  /// [path] string   specific path of asn, IP address, ranges, Firewall,Token status
  /// [format] string available format `json` `jsonp` `php` `xml`
  /// Throws an [IPfinderException]  if the statusCode not ok.

  call(path, format) async {
    var headers = {
      'User-Agent': 'IPfinder dart-client',
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };

    // var data = {"token": "free", "format": "json"};

    var body = json.encode({"token": "${this.token}", "format": "${format}"});

    var response =
        await http.post(defaultBaseUrl, headers: headers, body: body);
    //  if (response.statusCode != 200)
    //    throw IPfinderException('post error: statusCode= ${response.statusCode}');

    //  print('Response status: ${response.statusCode}');
    //  print('Response body: ${response.body}');
    return response.body;
  }

  /// Get details for an Your IP address..
  ///
  /// Throws an [IPfinderException] if the statusCode not ok.
  authentication() async {
    // var call   =  call("", format);
    return call("", format);
  }

  ///  Get details for an IP address.
  ///
  /// [path] path  IP address.
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide ipv(4|6).
  getAddressInfo(path) {
    Ipvalidation.validate(path);
    return call(path, format);
  }

  /// Get details for an AS number.
  ///
  /// [path] path AS number.
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide asn number.
  getAsn(path) {
    Asnvalidation.validate(path);
    return call(path, format);
  }

  /// Get details for an API Token .
  ///
  /// Throws an [IPfinderException] if the statusCode not ok .
  getStatus() {
    return call("", format);
  }

  /// Get details for an Organization name..
  ///
  /// [path]  Organization name.
  /// Throws an [IPfinderException] if the statusCode not ok .
  getRanges(path) {
    return call(path, format);
  }

  /// Get Firewall data.
  ///
  /// [path] AS number, alpha-2 country only.
  /// [formats] list formats supported
  /// Throws an [IPfinderException] if the statusCode not ok and [path], [formats] not valide  .
  getFirewall(path, formats) {
    Firewallvalidation.validate(path, formats);
    return call(path, formats);
  }

  /// Get Domain IP.
  ///
  /// [path]  The API supports passing in a single website name domain name
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide domain name.
  getDomain(path) {
    Domainvalidation.validate(path);
    return call(path, format);
  }

  /// Get Domain History IP.
  ///
  /// [path]  The API supports passing in a single website name domain name
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide domain name.
  getDomainHistory(path) {
    Domainvalidation.validate(path);
    return call(path, format);
  }

  /// Get list Domain By ASN, Country,Ranges.
  ///
  /// [by] The API supports passing in a single ASN,Country,Ranges
  /// Throws an [IPfinderException] if the statusCode not ok.
  getDomainBy(by) {
    return call(by, format);
  }
}
