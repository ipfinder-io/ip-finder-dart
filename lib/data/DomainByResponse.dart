// To parse this JSON data, do
//
//     final domainByResponse = domainByResponseFromJson(jsonString);

import 'dart:convert';

class DomainByResponse {
    String status;
    String statusMessage;
    String selectBy;
    int totalDomain;
    List<List<ListDomain>> listDomain;

    DomainByResponse({
        this.status,
        this.statusMessage,
        this.selectBy,
        this.totalDomain,
        this.listDomain,
    });

    factory DomainByResponse.fromJson(String str) => DomainByResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DomainByResponse.fromMap(Map<String, dynamic> json) => DomainByResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        selectBy: json["select_by"],
        totalDomain: json["total_domain"],
        listDomain: List<List<ListDomain>>.from(json["list_domain"].map((x) => List<ListDomain>.from(x.map((x) => ListDomain.fromMap(x))))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "status_message": statusMessage,
        "select_by": selectBy,
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

    ListDomain({
        this.domainName,
        this.address,
        this.country,
        this.asn,
        this.organization,
    });

    factory ListDomain.fromJson(String str) => ListDomain.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ListDomain.fromMap(Map<String, dynamic> json) => ListDomain(
        domainName: json["domain_name"],
        address: json["address"],
        country: json["country"],
        asn: json["asn"],
        organization: json["organization"],
    );

    Map<String, dynamic> toMap() => {
        "domain_name": domainName,
        "address": address,
        "country": country,
        "asn": asn,
        "organization": organization,
    };
}
