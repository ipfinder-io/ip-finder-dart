// To parse this JSON data, do
//
//     final rangeResponse = rangeResponseFromJson(jsonString);

import 'dart:convert';

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

    factory RangeResponse.fromJson(String str) => RangeResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RangeResponse.fromMap(Map<String, dynamic> json) => RangeResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        orgName: json["org_name"],
        continentCode: json["continent_code"],
        continentName: json["continent_name"],
        countryName: json["country_name"],
        domain: json["domain"],
        numRanges: json["num_ranges"],
        numIpv4: json["num_ipv4"],
        numIpv6: json["num_ipv6"],
        numAsn: json["num_asn"],
        listAsn: List<ListAsn>.from(json["list_asn"].map((x) => ListAsn.fromMap(x))),
        listPrefixes: List<ListPrefix>.from(json["list_prefixes"].map((x) => ListPrefix.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "status_message": statusMessage,
        "org_name": orgName,
        "continent_code": continentCode,
        "continent_name": continentName,
        "country_name": countryName,
        "domain": domain,
        "num_ranges": numRanges,
        "num_ipv4": numIpv4,
        "num_ipv6": numIpv6,
        "num_asn": numAsn,
        "list_asn": List<dynamic>.from(listAsn.map((x) => x.toMap())),
        "list_prefixes": List<dynamic>.from(listPrefixes.map((x) => x.toMap())),
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

    factory ListAsn.fromJson(String str) => ListAsn.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ListAsn.fromMap(Map<String, dynamic> json) => ListAsn(
        asn: json["asn"],
        orgId: json["OrgId"],
        totalPrefix: json["Total_prefix"],
        totalV4: json["Total_v4"],
        totalV6: json["Total_v6"],
    );

    Map<String, dynamic> toMap() => {
        "asn": asn,
        "OrgId": orgId,
        "Total_prefix": totalPrefix,
        "Total_v4": totalV4,
        "Total_v6": totalV6,
    };
}

class ListPrefix {
    String asn;
    String prefix;

    ListPrefix({
        this.asn,
        this.prefix,
    });

    factory ListPrefix.fromJson(String str) => ListPrefix.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ListPrefix.fromMap(Map<String, dynamic> json) => ListPrefix(
        asn: json["asn"],
        prefix: json["prefix"],
    );

    Map<String, dynamic> toMap() => {
        "asn": asn,
        "prefix": prefix,
    };
}
