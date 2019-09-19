// To parse this JSON data, do
//
//     final domainResponse = domainResponseFromJson(jsonString);

import 'dart:convert';

class DomainResponse {
    String status;
    String statusMessage;
    String ip;
    String domain;
    bool domainStatus;
    String continentCode;
    String continentName;
    String countryCode;
    String countryName;
    String countryNativeName;
    String regionName;
    String city;
    String latitude;
    String longitude;
    String asn;
    String organization;

    DomainResponse({
        this.status,
        this.statusMessage,
        this.ip,
        this.domain,
        this.domainStatus,
        this.continentCode,
        this.continentName,
        this.countryCode,
        this.countryName,
        this.countryNativeName,
        this.regionName,
        this.city,
        this.latitude,
        this.longitude,
        this.asn,
        this.organization,
    });

    factory DomainResponse.fromJson(String str) => DomainResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DomainResponse.fromMap(Map<String, dynamic> json) => DomainResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        ip: json["ip"],
        domain: json["domain"],
        domainStatus: json["domain_status"],
        continentCode: json["continent_code"],
        continentName: json["continent_name"],
        countryCode: json["country_code"],
        countryName: json["country_name"],
        countryNativeName: json["country_native_name"],
        regionName: json["region_name"],
        city: json["city"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        asn: json["asn"],
        organization: json["organization"],
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "status_message": statusMessage,
        "ip": ip,
        "domain": domain,
        "domain_status": domainStatus,
        "continent_code": continentCode,
        "continent_name": continentName,
        "country_code": countryCode,
        "country_name": countryName,
        "country_native_name": countryNativeName,
        "region_name": regionName,
        "city": city,
        "latitude": latitude,
        "longitude": longitude,
        "asn": asn,
        "organization": organization,
    };
}
