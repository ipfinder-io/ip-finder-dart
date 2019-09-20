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
  List<ListPrefixes> listPrefixes;

  RangeResponse(
      {this.status,
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
      this.listPrefixes});

  RangeResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusMessage = json['status_message'];
    orgName = json['org_name'];
    continentCode = json['continent_code'];
    continentName = json['continent_name'];
    countryName = json['country_name'];
    domain = json['domain'];
    numRanges = json['num_ranges'];
    numIpv4 = json['num_ipv4'];
    numIpv6 = json['num_ipv6'];
    numAsn = json['num_asn'];
    if (json['list_asn'] != null) {
      listAsn = new List<ListAsn>();
      json['list_asn'].forEach((v) {
        listAsn.add(new ListAsn.fromJson(v));
      });
    }
    if (json['list_prefixes'] != null) {
      listPrefixes = new List<ListPrefixes>();
      json['list_prefixes'].forEach((v) {
        listPrefixes.add(new ListPrefixes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_message'] = this.statusMessage;
    data['org_name'] = this.orgName;
    data['continent_code'] = this.continentCode;
    data['continent_name'] = this.continentName;
    data['country_name'] = this.countryName;
    data['domain'] = this.domain;
    data['num_ranges'] = this.numRanges;
    data['num_ipv4'] = this.numIpv4;
    data['num_ipv6'] = this.numIpv6;
    data['num_asn'] = this.numAsn;
    if (this.listAsn != null) {
      data['list_asn'] = this.listAsn.map((v) => v.toJson()).toList();
    }
    if (this.listPrefixes != null) {
      data['list_prefixes'] = this.listPrefixes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListAsn {
  String asn;
  String orgId;
  String totalPrefix;
  String totalV4;
  String totalV6;

  ListAsn({this.asn, this.orgId, this.totalPrefix, this.totalV4, this.totalV6});

  ListAsn.fromJson(Map<String, dynamic> json) {
    asn = json['asn'];
    orgId = json['OrgId'];
    totalPrefix = json['Total_prefix'];
    totalV4 = json['Total_v4'];
    totalV6 = json['Total_v6'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asn'] = this.asn;
    data['OrgId'] = this.orgId;
    data['Total_prefix'] = this.totalPrefix;
    data['Total_v4'] = this.totalV4;
    data['Total_v6'] = this.totalV6;
    return data;
  }
}

class ListPrefixes {
  String asn;
  String prefix;

  ListPrefixes({this.asn, this.prefix});

  ListPrefixes.fromJson(Map<String, dynamic> json) {
    asn = json['asn'];
    prefix = json['prefix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asn'] = this.asn;
    data['prefix'] = this.prefix;
    return data;
  }
}
