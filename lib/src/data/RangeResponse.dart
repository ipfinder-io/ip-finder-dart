// To parse this JSON data, do
//
//     final rangeResponse = rangeResponseFromJson(jsonString);

import 'dart:convert';

RangeResponse rangeResponseFromJson(String str) =>
    RangeResponse.fromJson(json.decode(str));

String rangeResponseToJson(RangeResponse data) => json.encode(data.toJson());

class RangeResponse {
  String status;
  String statusMessage;
  String orgName;
  String continentCode;
  String continentName;
  String countryName;
  String domain;
  String numRanges;
  String numIpv4;
  String numIpv6;
  int numAsn;
  List<ListAsn> listAsn;
  List<ListPrefix> listPrefixes;

  RangeResponse({
    this.status,
    this.statusMessage,
    this.orgName,
    this.continentCode,
    this.continentName,
    this.countryName,
    this.domain,
    this.numRanges,
    this.numIpv4,
    this.numIpv6,
    this.numAsn,
    this.listAsn,
    this.listPrefixes,
  });

  factory RangeResponse.fromJson(Map<String, dynamic> json) => RangeResponse(
        status: json["status"] == null ? null : json["status"],
        statusMessage:
            json["status_message"] == null ? null : json["status_message"],
        orgName: json["org_name"] == null ? null : json["org_name"],
        continentCode:
            json["continent_code"] == null ? null : json["continent_code"],
        continentName:
            json["continent_name"] == null ? null : json["continent_name"],
        countryName: json["country_name"] == null ? null : json["country_name"],
        domain: json["domain"] == null ? null : json["domain"],
        numRanges: json["num_ranges"] == null ? null : json["num_ranges"],
        numIpv4: json["num_ipv4"] == null ? null : json["num_ipv4"],
        numIpv6: json["num_ipv6"] == null ? null : json["num_ipv6"],
        numAsn: json["num_asn"] == null ? null : json["num_asn"],
        listAsn: json["list_asn"] == null
            ? null
            : List<ListAsn>.from(
                json["list_asn"].map((x) => ListAsn.fromJson(x))),
        listPrefixes: json["list_prefixes"] == null
            ? null
            : List<ListPrefix>.from(
                json["list_prefixes"].map((x) => ListPrefix.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "status_message": statusMessage == null ? null : statusMessage,
        "org_name": orgName == null ? null : orgName,
        "continent_code": continentCode == null ? null : continentCode,
        "continent_name": continentName == null ? null : continentName,
        "country_name": countryName == null ? null : countryName,
        "domain": domain == null ? null : domain,
        "num_ranges": numRanges == null ? null : numRanges,
        "num_ipv4": numIpv4 == null ? null : numIpv4,
        "num_ipv6": numIpv6 == null ? null : numIpv6,
        "num_asn": numAsn == null ? null : numAsn,
        "list_asn": listAsn == null
            ? null
            : List<dynamic>.from(listAsn.map((x) => x.toJson())),
        "list_prefixes": listPrefixes == null
            ? null
            : List<dynamic>.from(listPrefixes.map((x) => x.toJson())),
      };
}

class ListAsn {
  String asn;
  String orgId;
  String totalPrefix;
  String totalV4;
  String totalV6;

  ListAsn({
    this.asn,
    this.orgId,
    this.totalPrefix,
    this.totalV4,
    this.totalV6,
  });

  factory ListAsn.fromJson(Map<String, dynamic> json) => ListAsn(
        asn: json["asn"] == null ? null : json["asn"],
        orgId: json["OrgId"] == null ? null : json["OrgId"],
        totalPrefix: json["Total_prefix"] == null ? null : json["Total_prefix"],
        totalV4: json["Total_v4"] == null ? null : json["Total_v4"],
        totalV6: json["Total_v6"] == null ? null : json["Total_v6"],
      );

  Map<String, dynamic> toJson() => {
        "asn": asn == null ? null : asn,
        "OrgId": orgId == null ? null : orgId,
        "Total_prefix": totalPrefix == null ? null : totalPrefix,
        "Total_v4": totalV4 == null ? null : totalV4,
        "Total_v6": totalV6 == null ? null : totalV6,
      };
}

class ListPrefix {
  String asn;
  String prefix;

  ListPrefix({
    this.asn,
    this.prefix,
  });

  factory ListPrefix.fromJson(Map<String, dynamic> json) => ListPrefix(
        asn: json["asn"] == null ? null : json["asn"],
        prefix: json["prefix"] == null ? null : json["prefix"],
      );

  Map<String, dynamic> toJson() => {
        "asn": asn == null ? null : asn,
        "prefix": prefix == null ? null : prefix,
      };
}
