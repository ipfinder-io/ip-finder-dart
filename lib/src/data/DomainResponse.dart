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

  factory DomainResponse.fromRawJson(String str) =>
      DomainResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DomainResponse.fromJson(Map<String, dynamic> json) => DomainResponse(
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

  Map<String, dynamic> toJson() => {
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
