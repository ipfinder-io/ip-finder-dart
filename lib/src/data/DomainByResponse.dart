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

  factory DomainByResponse.fromRawJson(String str) =>
      DomainByResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DomainByResponse.fromJson(Map<String, dynamic> json) =>
      DomainByResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        selectBy: json["select_by"],
        totalDomain: json["total_domain"],
        listDomain: List<List<ListDomain>>.from(json["list_domain"].map((x) =>
            List<ListDomain>.from(x.map((x) => ListDomain.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "status_message": statusMessage,
        "select_by": selectBy,
        "total_domain": totalDomain,
        "list_domain": List<dynamic>.from(listDomain
            .map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
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

  factory ListDomain.fromRawJson(String str) =>
      ListDomain.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListDomain.fromJson(Map<String, dynamic> json) => ListDomain(
        domainName: json["domain_name"],
        address: json["address"],
        country: json["country"],
        asn: json["asn"],
        organization: json["organization"],
      );

  Map<String, dynamic> toJson() => {
        "domain_name": domainName,
        "address": address,
        "country": country,
        "asn": asn,
        "organization": organization,
      };
}
