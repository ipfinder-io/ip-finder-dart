// To parse this JSON data, do
//
//     final domainHtResponse = domainHtResponseFromJson(jsonString);

import 'dart:convert';

DomainHtResponse domainHtResponseFromJson(String str) =>
    DomainHtResponse.fromJson(json.decode(str));

String domainHtResponseToJson(DomainHtResponse data) =>
    json.encode(data.toJson());

class DomainHtResponse {
  String status;
  String statusMessage;
  int totalDomain;
  List<List<ListDomain>> listDomain;

  DomainHtResponse({
    this.status,
    this.statusMessage,
    this.totalDomain,
    this.listDomain,
  });

  factory DomainHtResponse.fromJson(Map<String, dynamic> json) =>
      DomainHtResponse(
        status: json["status"] == null ? null : json["status"],
        statusMessage:
            json["status_message"] == null ? null : json["status_message"],
        totalDomain: json["total_domain"] == null ? null : json["total_domain"],
        listDomain: json["list_domain"] == null
            ? null
            : List<List<ListDomain>>.from(json["list_domain"].map((x) =>
                List<ListDomain>.from(x.map((x) => ListDomain.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "status_message": statusMessage == null ? null : statusMessage,
        "total_domain": totalDomain == null ? null : totalDomain,
        "list_domain": listDomain == null
            ? null
            : List<dynamic>.from(listDomain
                .map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
      };
}

class ListDomain {
  String domainName;
  String address;
  String country;
  String asn;
  String organization;
  DateTime lastSeenOn;

  ListDomain({
    this.domainName,
    this.address,
    this.country,
    this.asn,
    this.organization,
    this.lastSeenOn,
  });

  factory ListDomain.fromJson(Map<String, dynamic> json) => ListDomain(
        domainName: json["domain_name"] == null ? null : json["domain_name"],
        address: json["address"] == null ? null : json["address"],
        country: json["country"] == null ? null : json["country"],
        asn: json["asn"] == null ? null : json["asn"],
        organization:
            json["organization"] == null ? null : json["organization"],
        lastSeenOn: json["last_seen_on"] == null
            ? null
            : DateTime.parse(json["last_seen_on"]),
      );

  Map<String, dynamic> toJson() => {
        "domain_name": domainName == null ? null : domainName,
        "address": address == null ? null : address,
        "country": country == null ? null : country,
        "asn": asn == null ? null : asn,
        "organization": organization == null ? null : organization,
        "last_seen_on":
            lastSeenOn == null ? null : lastSeenOn.toIso8601String(),
      };
}
