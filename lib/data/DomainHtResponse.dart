// To parse this JSON data, do
//
//     final domainHtResponse = domainHtResponseFromJson(jsonString);

import 'dart:convert';

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

    factory DomainHtResponse.fromJson(String str) => DomainHtResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DomainHtResponse.fromMap(Map<String, dynamic> json) => DomainHtResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        totalDomain: json["total_domain"],
        listDomain: List<List<ListDomain>>.from(json["list_domain"].map((x) => List<ListDomain>.from(x.map((x) => ListDomain.fromMap(x))))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "status_message": statusMessage,
        "total_domain": totalDomain,
        "list_domain": List<dynamic>.from(listDomain.map((x) => List<dynamic>.from(x.map((x) => x.toMap())))),
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

    factory ListDomain.fromJson(String str) => ListDomain.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ListDomain.fromMap(Map<String, dynamic> json) => ListDomain(
        domainName: json["domain_name"],
        address: json["address"],
        country: json["country"],
        asn: json["asn"],
        organization: json["organization"],
        lastSeenOn: DateTime.parse(json["last_seen_on"]),
    );

    Map<String, dynamic> toMap() => {
        "domain_name": domainName,
        "address": address,
        "country": country,
        "asn": asn,
        "organization": organization,
        "last_seen_on": lastSeenOn.toIso8601String(),
    };
}
