// To parse this JSON data, do
//
//     final domainByResponse = domainByResponseFromJson(jsonString);

import 'dart:convert';

DomainByResponse domainByResponseFromJson(String str) =>
    DomainByResponse.fromJson(json.decode(str));

String domainByResponseToJson(DomainByResponse data) =>
    json.encode(data.toJson());

class DomainByResponse {
  String status;
  String statusMessage;
  String selectBy;
  int totalDomain;
  List<List<ListsDomain>> listsDomains;

  DomainByResponse({
    this.status,
    this.statusMessage,
    this.selectBy,
    this.totalDomain,
    this.listsDomains,
  });

  factory DomainByResponse.fromJson(Map<String, dynamic> json) =>
      DomainByResponse(
        status: json["status"] == null ? null : json["status"],
        statusMessage:
            json["status_message"] == null ? null : json["status_message"],
        selectBy: json["select_by"] == null ? null : json["select_by"],
        totalDomain: json["total_domain"] == null ? null : json["total_domain"],
        listsDomains: json["list_domain"] == null
            ? null
            : List<List<ListsDomain>>.from(json["list_domain"].map((x) =>
                List<ListsDomain>.from(x.map((x) => ListsDomain.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "status_message": statusMessage == null ? null : statusMessage,
        "select_by": selectBy == null ? null : selectBy,
        "total_domain": totalDomain == null ? null : totalDomain,
        "list_domain": listsDomains == null
            ? null
            : List<dynamic>.from(listsDomains
                .map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
      };
}

class ListsDomain {
  String domainName;
  String address;
  String country;
  String asn;
  String organization;

  ListsDomain({
    this.domainName,
    this.address,
    this.country,
    this.asn,
    this.organization,
  });

  factory ListsDomain.fromJson(Map<String, dynamic> json) => ListsDomain(
        domainName: json["domain_name"] == null ? null : json["domain_name"],
        address: json["address"] == null ? null : json["address"],
        country: json["country"] == null ? null : json["country"],
        asn: json["asn"] == null ? null : json["asn"],
        organization:
            json["organization"] == null ? null : json["organization"],
      );

  Map<String, dynamic> toJson() => {
        "domain_name": domainName == null ? null : domainName,
        "address": address == null ? null : address,
        "country": country == null ? null : country,
        "asn": asn == null ? null : asn,
        "organization": organization == null ? null : organization,
      };
}
