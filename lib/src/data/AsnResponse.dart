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
class AsnResponse {
  String status;
  String statusMessage;
  String asn;
  String orgName;
  String continentCode;
  String continentName;
  String countryCode;
  String countryName;
  String allocated;
  String registry;
  String domain;
  String numIpsIpv4;
  String numIpsIpv6;
  String asName;
  String orgId;
  String comanyType;
  Speed speed;
  Peers peers;
  Upstreams upstreams;
  Downstreams downstreams;
  Prefixes prefixes;

  AsnResponse(
      {this.status,
      this.statusMessage,
      this.asn,
      this.orgName,
      this.continentCode,
      this.continentName,
      this.countryCode,
      this.countryName,
      this.allocated,
      this.registry,
      this.domain,
      this.numIpsIpv4,
      this.numIpsIpv6,
      this.asName,
      this.orgId,
      this.comanyType,
      this.speed,
      this.peers,
      this.upstreams,
      this.downstreams,
      this.prefixes});

  AsnResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusMessage = json['status_message'];
    asn = json['asn'];
    orgName = json['org_name'];
    continentCode = json['continent_code'];
    continentName = json['continent_name'];
    countryCode = json['country_code'];
    countryName = json['country_name'];
    allocated = json['allocated'];
    registry = json['registry'];
    domain = json['domain'];
    numIpsIpv4 = json['num_ips_ipv4'];
    numIpsIpv6 = json['num_ips_ipv6'];
    asName = json['as_name'];
    orgId = json['org_id'];
    comanyType = json['comany_type'];
    speed = json['speed'] != null ? new Speed.fromJson(json['speed']) : null;
    peers = json['peers'] != null ? new Peers.fromJson(json['peers']) : null;
    upstreams = json['upstreams'] != null
        ? new Upstreams.fromJson(json['upstreams'])
        : null;
    downstreams = json['downstreams'] != null
        ? new Downstreams.fromJson(json['downstreams'])
        : null;
    prefixes = json['prefixes'] != null
        ? new Prefixes.fromJson(json['prefixes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_message'] = this.statusMessage;
    data['asn'] = this.asn;
    data['org_name'] = this.orgName;
    data['continent_code'] = this.continentCode;
    data['continent_name'] = this.continentName;
    data['country_code'] = this.countryCode;
    data['country_name'] = this.countryName;
    data['allocated'] = this.allocated;
    data['registry'] = this.registry;
    data['domain'] = this.domain;
    data['num_ips_ipv4'] = this.numIpsIpv4;
    data['num_ips_ipv6'] = this.numIpsIpv6;
    data['as_name'] = this.asName;
    data['org_id'] = this.orgId;
    data['comany_type'] = this.comanyType;
    if (this.speed != null) {
      data['speed'] = this.speed.toJson();
    }
    if (this.peers != null) {
      data['peers'] = this.peers.toJson();
    }
    if (this.upstreams != null) {
      data['upstreams'] = this.upstreams.toJson();
    }
    if (this.downstreams != null) {
      data['downstreams'] = this.downstreams.toJson();
    }
    if (this.prefixes != null) {
      data['prefixes'] = this.prefixes.toJson();
    }
    return data;
  }
}

class Speed {
  String ping;
  String download;
  String upload;

  Speed({this.ping, this.download, this.upload});

  Speed.fromJson(Map<String, dynamic> json) {
    ping = json['ping'];
    download = json['download'];
    upload = json['upload'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ping'] = this.ping;
    data['download'] = this.download;
    data['upload'] = this.upload;
    return data;
  }
}

class Peers {
  int totalPeers;
  List<String> listPeers;

  Peers({this.totalPeers, this.listPeers});

  Peers.fromJson(Map<String, dynamic> json) {
    totalPeers = json['total_peers'];
    listPeers = json['list_peers'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_peers'] = this.totalPeers;
    data['list_peers'] = this.listPeers;
    return data;
  }
}

class Upstreams {
  int totalUpstreams;
  List<String> listUpstreams;

  Upstreams({this.totalUpstreams, this.listUpstreams});

  Upstreams.fromJson(Map<String, dynamic> json) {
    totalUpstreams = json['total_upstreams'];
    listUpstreams = json['list_upstreams'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_upstreams'] = this.totalUpstreams;
    data['list_upstreams'] = this.listUpstreams;
    return data;
  }
}

class Downstreams {
  int totalDownstreams;
  List<String> listDownstreams;

  Downstreams({this.totalDownstreams, this.listDownstreams});

  Downstreams.fromJson(Map<String, dynamic> json) {
    totalDownstreams = json['total_downstreams'];
    listDownstreams = json['list_downstreams'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_downstreams'] = this.totalDownstreams;
    data['list_downstreams'] = this.listDownstreams;
    return data;
  }
}

class Prefixes {
  int totalPrefixes;
  List<String> listPrefixes;

  Prefixes({this.totalPrefixes, this.listPrefixes});

  Prefixes.fromJson(Map<String, dynamic> json) {
    totalPrefixes = json['total_prefixes'];
    listPrefixes = json['list_prefixes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_prefixes'] = this.totalPrefixes;
    data['list_prefixes'] = this.listPrefixes;
    return data;
  }
}
