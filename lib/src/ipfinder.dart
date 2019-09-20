// Copyright 2019 Mohamed Benrebia <mohamed@ipfinder.io>

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:ipfinder/ipfinder.dart';
import 'dart:core';

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
  }

  /// call to server.
  ///
  /// [path] string   specific path of asn, IP address, ranges, Firewall,Token status
  /// [format] string available format `json` `jsonp` `php` `xml`
  /// Throws an [IPfinderException]  if the statusCode not ok.
  Future<http.Response> call(String path, String format) async {
    var headers = {
      'User-Agent': 'IPfinder dart-client',
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };

    var body = json.encode({"token": "${this.token}", "format": "${format}"});

    final response =
        await http.post(defaultBaseUrl, headers: headers, body: body);
    if (response.statusCode != 200){
      throw IPfinderException('post error: statusCode= ${response.statusCode}');
    }
    return response;
  }

  /// Get details for an Your IP address..
  ///
  /// Throws an [IPfinderException] if the statusCode not ok.
  Future<IpResponse> authentication() async {
    var data = await call("", format);
    Map map = json.decode(data.body);
    IpResponse auth = IpResponse.fromJson(map);
    return auth;
  }

  ///  Get details for an IP address.
  ///
  /// [path] path  IP address.
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide ipv(4|6).
  Future<IpResponse> getAddressInfo(String path) async {
    Ipvalidation.validate(path);
    var data = await call(path, format);
    Map map = json.decode(data.body);
    IpResponse ip = IpResponse.fromJson(map);
    return ip;
  }

  /// Get details for an AS number.
  ///
  /// [path] path AS number.
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide asn number.
  Future<AsnResponse> getAsn(String path) async {
    Asnvalidation.validate(path);
    var data = await call(path, format);
    Map map = json.decode(data.body);
    AsnResponse asn = AsnResponse.fromJson(map);
    return asn;
  }

  /// Get details for an API Token .
  ///
  /// Throws an [IPfinderException] if the statusCode not ok .
  Future<StatusResponse> getStatus() async {
    var data = await call(statusPath, format);
    Map map = json.decode(data.body);
    StatusResponse status = StatusResponse.fromJson(map);
    return status;
  }

  /// Get details for an Organization name..
  ///
  /// [path]  Organization name.
  /// Throws an [IPfinderException] if the statusCode not ok .
  Future<RangeResponse> getRanges(String path) async {
    var data = await call(rangesPath + Uri.encodeFull(path), format);
    Map map = json.decode(data.body);
    RangeResponse range = RangeResponse.fromJson(map);
    return range;
  }

  /// Get Firewall data.
  ///
  /// [path] AS number, alpha-2 country only.
  /// [formats] list formats supported
  /// Throws an [IPfinderException] if the statusCode not ok and [path], [formats] not valide  .
  Future<http.Response> getFirewall(String path, String formats) async {
    Firewallvalidation.validate(path, formats);
    http.Response data = await call(firewallPath + path, formats);
    // String fire = String(map);
    return data;
  }

  /// Get Domain IP.
  ///
  /// [path]  The API supports passing in a single website name domain name
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide domain name.
  Future<DomainResponse> getDomain(String path) async {
    Domainvalidation.validate(path);
    var data = await call(domainPath + path, format);
    Map map = json.decode(data.body);
    DomainResponse domain = DomainResponse.fromJson(map);
    return domain;
  }

  /// Get Domain History IP.
  ///
  /// [path]  The API supports passing in a single website name domain name
  /// Throws an [IPfinderException] if the statusCode not ok or  [path] not valide domain name.
  Future<DomainHtResponse> getDomainHistory(String path) async {
    Domainvalidation.validate(path);
    var data = await call(domainhPath + path, format);
    Map map = json.decode(data.body);
    DomainHtResponse domain = DomainHtResponse.fromJson(map);
    return domain;
  }

  /// Get list Domain By ASN, Country,Ranges.
  ///
  /// [by] The API supports passing in a single ASN,Country,Ranges
  /// Throws an [IPfinderException] if the statusCode not ok.
  Future<DomainByResponse> getDomainBy(String by) async {
    var data = await call(domainbyPath + by, format);
    Map map = json.decode(data.body);
    DomainByResponse domainby = DomainByResponse.fromJson(map);
    return domainby;
  }
}
