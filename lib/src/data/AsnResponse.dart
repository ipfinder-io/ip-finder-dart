// To parse this JSON data, do
//
//     final asnResponse = asnResponseFromJson(jsonString);

import 'dart:convert';

AsnResponse asnResponseFromJson(String str) =>
    AsnResponse.fromJson(json.decode(str));

String asnResponseToJson(AsnResponse data) => json.encode(data.toJson());

class AsnResponse {
  String status;
  String statusMessage;
  String asn;
  String orgName;
  String continentCode;
  String continentName;
  String countryCode;
  String countryName;
  DateTime allocated;
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

  AsnResponse({
    this.status,
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
    this.prefixes,
  });

  factory AsnResponse.fromJson(Map<String, dynamic> json) => AsnResponse(
        status: json["status"] == null ? null : json["status"],
        statusMessage:
            json["status_message"] == null ? null : json["status_message"],
        asn: json["asn"] == null ? null : json["asn"],
        orgName: json["org_name"] == null ? null : json["org_name"],
        continentCode:
            json["continent_code"] == null ? null : json["continent_code"],
        continentName:
            json["continent_name"] == null ? null : json["continent_name"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
        countryName: json["country_name"] == null ? null : json["country_name"],
        allocated: json["allocated"] == null
            ? null
            : DateTime.parse(json["allocated"]),
        registry: json["registry"] == null ? null : json["registry"],
        domain: json["domain"] == null ? null : json["domain"],
        numIpsIpv4: json["num_ips_ipv4"] == null ? null : json["num_ips_ipv4"],
        numIpsIpv6: json["num_ips_ipv6"] == null ? null : json["num_ips_ipv6"],
        asName: json["as_name"] == null ? null : json["as_name"],
        orgId: json["org_id"] == null ? null : json["org_id"],
        comanyType: json["comany_type"] == null ? null : json["comany_type"],
        speed: json["speed"] == null ? null : Speed.fromJson(json["speed"]),
        peers: json["peers"] == null ? null : Peers.fromJson(json["peers"]),
        upstreams: json["upstreams"] == null
            ? null
            : Upstreams.fromJson(json["upstreams"]),
        downstreams: json["downstreams"] == null
            ? null
            : Downstreams.fromJson(json["downstreams"]),
        prefixes: json["prefixes"] == null
            ? null
            : Prefixes.fromJson(json["prefixes"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "status_message": statusMessage == null ? null : statusMessage,
        "asn": asn == null ? null : asn,
        "org_name": orgName == null ? null : orgName,
        "continent_code": continentCode == null ? null : continentCode,
        "continent_name": continentName == null ? null : continentName,
        "country_code": countryCode == null ? null : countryCode,
        "country_name": countryName == null ? null : countryName,
        "allocated": allocated == null
            ? null
            : "${allocated.year.toString().padLeft(4, '0')}-${allocated.month.toString().padLeft(2, '0')}-${allocated.day.toString().padLeft(2, '0')}",
        "registry": registry == null ? null : registry,
        "domain": domain == null ? null : domain,
        "num_ips_ipv4": numIpsIpv4 == null ? null : numIpsIpv4,
        "num_ips_ipv6": numIpsIpv6 == null ? null : numIpsIpv6,
        "as_name": asName == null ? null : asName,
        "org_id": orgId == null ? null : orgId,
        "comany_type": comanyType == null ? null : comanyType,
        "speed": speed == null ? null : speed.toJson(),
        "peers": peers == null ? null : peers.toJson(),
        "upstreams": upstreams == null ? null : upstreams.toJson(),
        "downstreams": downstreams == null ? null : downstreams.toJson(),
        "prefixes": prefixes == null ? null : prefixes.toJson(),
      };
}

class Downstreams {
  int totalDownstreams;
  List<String> listDownstreams;

  Downstreams({
    this.totalDownstreams,
    this.listDownstreams,
  });

  factory Downstreams.fromJson(Map<String, dynamic> json) => Downstreams(
        totalDownstreams: json["total_downstreams"] == null
            ? null
            : json["total_downstreams"],
        listDownstreams: json["list_downstreams"] == null
            ? null
            : List<String>.from(json["list_downstreams"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "total_downstreams": totalDownstreams == null ? null : totalDownstreams,
        "list_downstreams": listDownstreams == null
            ? null
            : List<dynamic>.from(listDownstreams.map((x) => x)),
      };
}

class Peers {
  int totalPeers;
  List<String> listPeers;

  Peers({
    this.totalPeers,
    this.listPeers,
  });

  factory Peers.fromJson(Map<String, dynamic> json) => Peers(
        totalPeers: json["total_peers"] == null ? null : json["total_peers"],
        listPeers: json["list_peers"] == null
            ? null
            : List<String>.from(json["list_peers"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "total_peers": totalPeers == null ? null : totalPeers,
        "list_peers": listPeers == null
            ? null
            : List<dynamic>.from(listPeers.map((x) => x)),
      };
}

class Prefixes {
  int totalPrefixes;
  List<String> listPrefixes;

  Prefixes({
    this.totalPrefixes,
    this.listPrefixes,
  });

  factory Prefixes.fromJson(Map<String, dynamic> json) => Prefixes(
        totalPrefixes:
            json["total_prefixes"] == null ? null : json["total_prefixes"],
        listPrefixes: json["list_prefixes"] == null
            ? null
            : List<String>.from(json["list_prefixes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "total_prefixes": totalPrefixes == null ? null : totalPrefixes,
        "list_prefixes": listPrefixes == null
            ? null
            : List<dynamic>.from(listPrefixes.map((x) => x)),
      };
}

class Speed {
  String ping;
  String download;
  String upload;

  Speed({
    this.ping,
    this.download,
    this.upload,
  });

  factory Speed.fromJson(Map<String, dynamic> json) => Speed(
        ping: json["ping"] == null ? null : json["ping"],
        download: json["download"] == null ? null : json["download"],
        upload: json["upload"] == null ? null : json["upload"],
      );

  Map<String, dynamic> toJson() => {
        "ping": ping == null ? null : ping,
        "download": download == null ? null : download,
        "upload": upload == null ? null : upload,
      };
}

class Upstreams {
  int totalUpstreams;
  List<String> listUpstreams;

  Upstreams({
    this.totalUpstreams,
    this.listUpstreams,
  });

  factory Upstreams.fromJson(Map<String, dynamic> json) => Upstreams(
        totalUpstreams:
            json["total_upstreams"] == null ? null : json["total_upstreams"],
        listUpstreams: json["list_upstreams"] == null
            ? null
            : List<String>.from(json["list_upstreams"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "total_upstreams": totalUpstreams == null ? null : totalUpstreams,
        "list_upstreams": listUpstreams == null
            ? null
            : List<dynamic>.from(listUpstreams.map((x) => x)),
      };
}
