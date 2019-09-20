// To parse this JSON data, do
//
//     final domainResponse = domainResponseFromJson(jsonString);

import 'dart:convert';

DomainResponse domainResponseFromJson(String str) =>
    DomainResponse.fromJson(json.decode(str));

String domainResponseToJson(DomainResponse data) => json.encode(data.toJson());

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

  factory DomainResponse.fromJson(Map<String, dynamic> json) => DomainResponse(
        status: json["status"] == null ? null : json["status"],
        statusMessage:
            json["status_message"] == null ? null : json["status_message"],
        ip: json["ip"] == null ? null : json["ip"],
        domain: json["domain"] == null ? null : json["domain"],
        domainStatus:
            json["domain_status"] == null ? null : json["domain_status"],
        continentCode:
            json["continent_code"] == null ? null : json["continent_code"],
        continentName:
            json["continent_name"] == null ? null : json["continent_name"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
        countryName: json["country_name"] == null ? null : json["country_name"],
        countryNativeName: json["country_native_name"] == null
            ? null
            : json["country_native_name"],
        regionName: json["region_name"] == null ? null : json["region_name"],
        city: json["city"] == null ? null : json["city"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        asn: json["asn"] == null ? null : json["asn"],
        organization:
            json["organization"] == null ? null : json["organization"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "status_message": statusMessage == null ? null : statusMessage,
        "ip": ip == null ? null : ip,
        "domain": domain == null ? null : domain,
        "domain_status": domainStatus == null ? null : domainStatus,
        "continent_code": continentCode == null ? null : continentCode,
        "continent_name": continentName == null ? null : continentName,
        "country_code": countryCode == null ? null : countryCode,
        "country_name": countryName == null ? null : countryName,
        "country_native_name":
            countryNativeName == null ? null : countryNativeName,
        "region_name": regionName == null ? null : regionName,
        "city": city == null ? null : city,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "asn": asn == null ? null : asn,
        "organization": organization == null ? null : organization,
      };
}
