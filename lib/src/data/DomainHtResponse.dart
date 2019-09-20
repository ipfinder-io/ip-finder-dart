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

class DomainHtResponse {
  String status;
  String statusMessage;
  int totalDomain;
  List<List<ListsDomain>> listsDomains;

  DomainHtResponse({
    this.status,
    this.statusMessage,
    this.totalDomain,
    this.listsDomains,
  });

  factory DomainHtResponse.fromRawJson(String str) =>
      DomainHtResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DomainHtResponse.fromJson(Map<String, dynamic> json) =>
      DomainHtResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        totalDomain: json["total_domain"],
        listsDomains: List<List<ListsDomain>>.from(json["list_domain"].map(
            (x) =>
                List<ListsDomain>.from(x.map((x) => ListsDomain.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "status_message": statusMessage,
        "total_domain": totalDomain,
        "list_domain": List<dynamic>.from(listsDomains
            .map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
      };
}

class ListsDomain {
  String domainName;
  String address;
  String country;
  String asn;
  String organization;
  DateTime lastSeenOn;

  ListsDomain({
    this.domainName,
    this.address,
    this.country,
    this.asn,
    this.organization,
    this.lastSeenOn,
  });

  factory ListsDomain.fromRawJson(String str) =>
      ListsDomain.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListsDomain.fromJson(Map<String, dynamic> json) => ListsDomain(
        domainName: json["domain_name"],
        address: json["address"],
        country: json["country"],
        asn: json["asn"],
        organization: json["organization"],
        lastSeenOn: DateTime.parse(json["last_seen_on"]),
      );

  Map<String, dynamic> toJson() => {
        "domain_name": domainName,
        "address": address,
        "country": country,
        "asn": asn,
        "organization": organization,
        "last_seen_on": lastSeenOn.toIso8601String(),
      };
}
