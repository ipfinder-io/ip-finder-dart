// To parse this JSON data, do
//
//     final ipResponse = ipResponseFromJson(jsonString);

import 'dart:convert';

class IpResponse {
    String status;
    String statusMessage;
    String ip;
    String type;
    String continentCode;
    String continentName;
    String countryCode;
    String countryName;
    String countryNativeName;
    String regionName;
    String city;
    String latitude;
    String longitude;
    Location location;
    TimeZone timeZone;
    Currency currency;
    Languages languages;
    Connection connection;
    Security security;
    Header header;

    IpResponse({
        this.status,
        this.statusMessage,
        this.ip,
        this.type,
        this.continentCode,
        this.continentName,
        this.countryCode,
        this.countryName,
        this.countryNativeName,
        this.regionName,
        this.city,
        this.latitude,
        this.longitude,
        this.location,
        this.timeZone,
        this.currency,
        this.languages,
        this.connection,
        this.security,
        this.header,
    });

    factory IpResponse.fromJson(String str) => IpResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory IpResponse.fromMap(Map<String, dynamic> json) => IpResponse(
        status: json["status"],
        statusMessage: json["status_message"],
        ip: json["ip"],
        type: json["type"],
        continentCode: json["continent_code"],
        continentName: json["continent_name"],
        countryCode: json["country_code"],
        countryName: json["country_name"],
        countryNativeName: json["country_native_name"],
        regionName: json["region_name"],
        city: json["city"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        location: Location.fromMap(json["location"]),
        timeZone: TimeZone.fromMap(json["time_zone"]),
        currency: Currency.fromMap(json["currency"]),
        languages: Languages.fromMap(json["languages"]),
        connection: Connection.fromMap(json["connection"]),
        security: Security.fromMap(json["security"]),
        header: Header.fromMap(json["header"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "status_message": statusMessage,
        "ip": ip,
        "type": type,
        "continent_code": continentCode,
        "continent_name": continentName,
        "country_code": countryCode,
        "country_name": countryName,
        "country_native_name": countryNativeName,
        "region_name": regionName,
        "city": city,
        "latitude": latitude,
        "longitude": longitude,
        "location": location.toMap(),
        "time_zone": timeZone.toMap(),
        "currency": currency.toMap(),
        "languages": languages.toMap(),
        "connection": connection.toMap(),
        "security": security.toMap(),
        "header": header.toMap(),
    };
}

class Connection {
    String asn;
    String organization;
    String domain;
    String type;

    Connection({
        this.asn,
        this.organization,
        this.domain,
        this.type,
    });

    factory Connection.fromJson(String str) => Connection.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Connection.fromMap(Map<String, dynamic> json) => Connection(
        asn: json["asn"],
        organization: json["organization"],
        domain: json["domain"],
        type: json["type"],
    );

    Map<String, dynamic> toMap() => {
        "asn": asn,
        "organization": organization,
        "domain": domain,
        "type": type,
    };
}

class Currency {
    String name;
    String symbol;
    String symbolNative;

    Currency({
        this.name,
        this.symbol,
        this.symbolNative,
    });

    factory Currency.fromJson(String str) => Currency.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Currency.fromMap(Map<String, dynamic> json) => Currency(
        name: json["name"],
        symbol: json["symbol"],
        symbolNative: json["symbol_native"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "symbol": symbol,
        "symbol_native": symbolNative,
    };
}

class Header {
    int totalUserAgent;
    List<ListUserAgent> listUserAgent;

    Header({
        this.totalUserAgent,
        this.listUserAgent,
    });

    factory Header.fromJson(String str) => Header.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Header.fromMap(Map<String, dynamic> json) => Header(
        totalUserAgent: json["total_user_agent"],
        listUserAgent: List<ListUserAgent>.from(json["list_user_agent"].map((x) => ListUserAgent.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "total_user_agent": totalUserAgent,
        "list_user_agent": List<dynamic>.from(listUserAgent.map((x) => x.toMap())),
    };
}

class ListUserAgent {
    String userAgent;
    String browserName;
    String osName;
    String deviceType;

    ListUserAgent({
        this.userAgent,
        this.browserName,
        this.osName,
        this.deviceType,
    });

    factory ListUserAgent.fromJson(String str) => ListUserAgent.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ListUserAgent.fromMap(Map<String, dynamic> json) => ListUserAgent(
        userAgent: json["user_agent"],
        browserName: json["browser_name"] == null ? null : json["browser_name"],
        osName: json["os_name"] == null ? null : json["os_name"],
        deviceType: json["device_type"],
    );

    Map<String, dynamic> toMap() => {
        "user_agent": userAgent,
        "browser_name": browserName == null ? null : browserName,
        "os_name": osName == null ? null : osName,
        "device_type": deviceType,
    };
}

class Languages {
    String code;
    String name;
    String nameNative;

    Languages({
        this.code,
        this.name,
        this.nameNative,
    });

    factory Languages.fromJson(String str) => Languages.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Languages.fromMap(Map<String, dynamic> json) => Languages(
        code: json["code"],
        name: json["name"],
        nameNative: json["name_native"],
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "name": name,
        "name_native": nameNative,
    };
}

class Location {
    String capital;
    String countryFlag;
    String flagPng;
    String countryFlagEmoji;
    String countryFlagEmojiUnicode;
    String callingCode;
    String toplevelDomain;
    String alpha3Code;
    String population;
    bool isEu;
    bool isAr;

    Location({
        this.capital,
        this.countryFlag,
        this.flagPng,
        this.countryFlagEmoji,
        this.countryFlagEmojiUnicode,
        this.callingCode,
        this.toplevelDomain,
        this.alpha3Code,
        this.population,
        this.isEu,
        this.isAr,
    });

    factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Location.fromMap(Map<String, dynamic> json) => Location(
        capital: json["capital"],
        countryFlag: json["country_flag"],
        flagPng: json["flag_png"],
        countryFlagEmoji: json["country_flag_emoji"],
        countryFlagEmojiUnicode: json["country_flag_emoji_unicode"],
        callingCode: json["calling_code"],
        toplevelDomain: json["toplevel_domain"],
        alpha3Code: json["alpha3_code"],
        population: json["population"],
        isEu: json["is_eu"],
        isAr: json["is_ar"],
    );

    Map<String, dynamic> toMap() => {
        "capital": capital,
        "country_flag": countryFlag,
        "flag_png": flagPng,
        "country_flag_emoji": countryFlagEmoji,
        "country_flag_emoji_unicode": countryFlagEmojiUnicode,
        "calling_code": callingCode,
        "toplevel_domain": toplevelDomain,
        "alpha3_code": alpha3Code,
        "population": population,
        "is_eu": isEu,
        "is_ar": isAr,
    };
}

class Security {
    bool isProxy;
    bool proxyType;
    bool isTor;
    bool isSpam;
    String threatLevel;

    Security({
        this.isProxy,
        this.proxyType,
        this.isTor,
        this.isSpam,
        this.threatLevel,
    });

    factory Security.fromJson(String str) => Security.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Security.fromMap(Map<String, dynamic> json) => Security(
        isProxy: json["is_proxy"],
        proxyType: json["proxy_type"],
        isTor: json["is_tor"],
        isSpam: json["is_spam"],
        threatLevel: json["threat_level"],
    );

    Map<String, dynamic> toMap() => {
        "is_proxy": isProxy,
        "proxy_type": proxyType,
        "is_tor": isTor,
        "is_spam": isSpam,
        "threat_level": threatLevel,
    };
}

class TimeZone {
    String id;
    String utc;
    int gmtOffset;
    DateTime currentTime;

    TimeZone({
        this.id,
        this.utc,
        this.gmtOffset,
        this.currentTime,
    });

    factory TimeZone.fromJson(String str) => TimeZone.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TimeZone.fromMap(Map<String, dynamic> json) => TimeZone(
        id: json["id"],
        utc: json["UTC"],
        gmtOffset: json["gmt_offset"],
        currentTime: DateTime.parse(json["current_time"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "UTC": utc,
        "gmt_offset": gmtOffset,
        "current_time": currentTime.toIso8601String(),
    };
}
