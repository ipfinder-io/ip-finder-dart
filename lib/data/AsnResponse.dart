// To parse this JSON data, do
//
//     final asnResponse = asnResponseFromJson(jsonString);

import 'dart:convert';

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

    factory AsnResponse.fromJson(String str) => AsnResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AsnResponse.fromMap(Map<String, dynamic> json) => AsnResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        asn: json["asn"],
        orgName: json["org_name"],
        continentCode: json["continent_code"],
        continentName: json["continent_name"],
        countryCode: json["country_code"],
        countryName: json["country_name"],
        allocated: DateTime.parse(json["allocated"]),
        registry: json["registry"],
        domain: json["domain"],
        numIpsIpv4: json["num_ips_ipv4"],
        numIpsIpv6: json["num_ips_ipv6"],
        asName: json["as_name"],
        orgId: json["org_id"],
        comanyType: json["comany_type"],
        speed: Speed.fromMap(json["speed"]),
        peers: Peers.fromMap(json["peers"]),
        upstreams: Upstreams.fromMap(json["upstreams"]),
        downstreams: Downstreams.fromMap(json["downstreams"]),
        prefixes: Prefixes.fromMap(json["prefixes"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "status_message": statusMessage,
        "asn": asn,
        "org_name": orgName,
        "continent_code": continentCode,
        "continent_name": continentName,
        "country_code": countryCode,
        "country_name": countryName,
        "allocated": "${allocated.year.toString().padLeft(4, '0')}-${allocated.month.toString().padLeft(2, '0')}-${allocated.day.toString().padLeft(2, '0')}",
        "registry": registry,
        "domain": domain,
        "num_ips_ipv4": numIpsIpv4,
        "num_ips_ipv6": numIpsIpv6,
        "as_name": asName,
        "org_id": orgId,
        "comany_type": comanyType,
        "speed": speed.toMap(),
        "peers": peers.toMap(),
        "upstreams": upstreams.toMap(),
        "downstreams": downstreams.toMap(),
        "prefixes": prefixes.toMap(),
    };
}

class Downstreams {
    int totalDownstreams;
    List<String> listDownstreams;

    Downstreams({
        this.totalDownstreams,
        this.listDownstreams,
    });

    factory Downstreams.fromJson(String str) => Downstreams.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Downstreams.fromMap(Map<String, dynamic> json) => Downstreams(
        totalDownstreams: json["total_downstreams"],
        listDownstreams: List<String>.from(json["list_downstreams"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "total_downstreams": totalDownstreams,
        "list_downstreams": List<dynamic>.from(listDownstreams.map((x) => x)),
    };
}

class Peers {
    int totalPeers;
    List<String> listPeers;

    Peers({
        this.totalPeers,
        this.listPeers,
    });

    factory Peers.fromJson(String str) => Peers.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Peers.fromMap(Map<String, dynamic> json) => Peers(
        totalPeers: json["total_peers"],
        listPeers: List<String>.from(json["list_peers"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "total_peers": totalPeers,
        "list_peers": List<dynamic>.from(listPeers.map((x) => x)),
    };
}

class Prefixes {
    int totalPrefixes;
    List<String> listPrefixes;

    Prefixes({
        this.totalPrefixes,
        this.listPrefixes,
    });

    factory Prefixes.fromJson(String str) => Prefixes.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Prefixes.fromMap(Map<String, dynamic> json) => Prefixes(
        totalPrefixes: json["total_prefixes"],
        listPrefixes: List<String>.from(json["list_prefixes"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "total_prefixes": totalPrefixes,
        "list_prefixes": List<dynamic>.from(listPrefixes.map((x) => x)),
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

    factory Speed.fromJson(String str) => Speed.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Speed.fromMap(Map<String, dynamic> json) => Speed(
        ping: json["ping"],
        download: json["download"],
        upload: json["upload"],
    );

    Map<String, dynamic> toMap() => {
        "ping": ping,
        "download": download,
        "upload": upload,
    };
}

class Upstreams {
    int totalUpstreams;
    List<String> listUpstreams;

    Upstreams({
        this.totalUpstreams,
        this.listUpstreams,
    });

    factory Upstreams.fromJson(String str) => Upstreams.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Upstreams.fromMap(Map<String, dynamic> json) => Upstreams(
        totalUpstreams: json["total_upstreams"],
        listUpstreams: List<String>.from(json["list_upstreams"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "total_upstreams": totalUpstreams,
        "list_upstreams": List<dynamic>.from(listUpstreams.map((x) => x)),
    };
}
