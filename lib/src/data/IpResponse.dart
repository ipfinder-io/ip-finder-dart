// To parse this JSON data, do
//
//     final ipResponse = ipResponseFromJson(jsonString);

import 'dart:convert';

IpResponse ipResponseFromJson(String str) =>
    IpResponse.fromJson(json.decode(str));

String ipResponseToJson(IpResponse data) => json.encode(data.toJson());

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

  factory IpResponse.fromJson(Map<String, dynamic> json) => IpResponse(
        status: json["status"] == null ? null : json["status"],
        statusMessage:
            json["status_message"] == null ? null : json["status_message"],
        ip: json["ip"] == null ? null : json["ip"],
        type: json["type"] == null ? null : json["type"],
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
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        timeZone: json["time_zone"] == null
            ? null
            : TimeZone.fromJson(json["time_zone"]),
        currency: json["currency"] == null
            ? null
            : Currency.fromJson(json["currency"]),
        languages: json["languages"] == null
            ? null
            : Languages.fromJson(json["languages"]),
        connection: json["connection"] == null
            ? null
            : Connection.fromJson(json["connection"]),
        security: json["security"] == null
            ? null
            : Security.fromJson(json["security"]),
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "status_message": statusMessage == null ? null : statusMessage,
        "ip": ip == null ? null : ip,
        "type": type == null ? null : type,
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
        "location": location == null ? null : location.toJson(),
        "time_zone": timeZone == null ? null : timeZone.toJson(),
        "currency": currency == null ? null : currency.toJson(),
        "languages": languages == null ? null : languages.toJson(),
        "connection": connection == null ? null : connection.toJson(),
        "security": security == null ? null : security.toJson(),
        "header": header == null ? null : header.toJson(),
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

  factory Connection.fromJson(Map<String, dynamic> json) => Connection(
        asn: json["asn"] == null ? null : json["asn"],
        organization:
            json["organization"] == null ? null : json["organization"],
        domain: json["domain"] == null ? null : json["domain"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "asn": asn == null ? null : asn,
        "organization": organization == null ? null : organization,
        "domain": domain == null ? null : domain,
        "type": type == null ? null : type,
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

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"] == null ? null : json["name"],
        symbol: json["symbol"] == null ? null : json["symbol"],
        symbolNative:
            json["symbol_native"] == null ? null : json["symbol_native"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "symbol": symbol == null ? null : symbol,
        "symbol_native": symbolNative == null ? null : symbolNative,
      };
}

class Header {
  int totalUserAgent;
  List<ListUserAgent> listUserAgent;

  Header({
    this.totalUserAgent,
    this.listUserAgent,
  });

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        totalUserAgent:
            json["total_user_agent"] == null ? null : json["total_user_agent"],
        listUserAgent: json["list_user_agent"] == null
            ? null
            : List<ListUserAgent>.from(
                json["list_user_agent"].map((x) => ListUserAgent.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total_user_agent": totalUserAgent == null ? null : totalUserAgent,
        "list_user_agent": listUserAgent == null
            ? null
            : List<dynamic>.from(listUserAgent.map((x) => x.toJson())),
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

  factory ListUserAgent.fromJson(Map<String, dynamic> json) => ListUserAgent(
        userAgent: json["user_agent"] == null ? null : json["user_agent"],
        browserName: json["browser_name"] == null ? null : json["browser_name"],
        osName: json["os_name"] == null ? null : json["os_name"],
        deviceType: json["device_type"] == null ? null : json["device_type"],
      );

  Map<String, dynamic> toJson() => {
        "user_agent": userAgent == null ? null : userAgent,
        "browser_name": browserName == null ? null : browserName,
        "os_name": osName == null ? null : osName,
        "device_type": deviceType == null ? null : deviceType,
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

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        code: json["code"] == null ? null : json["code"],
        name: json["name"] == null ? null : json["name"],
        nameNative: json["name_native"] == null ? null : json["name_native"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "name": name == null ? null : name,
        "name_native": nameNative == null ? null : nameNative,
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

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        capital: json["capital"] == null ? null : json["capital"],
        countryFlag: json["country_flag"] == null ? null : json["country_flag"],
        flagPng: json["flag_png"] == null ? null : json["flag_png"],
        countryFlagEmoji: json["country_flag_emoji"] == null
            ? null
            : json["country_flag_emoji"],
        countryFlagEmojiUnicode: json["country_flag_emoji_unicode"] == null
            ? null
            : json["country_flag_emoji_unicode"],
        callingCode: json["calling_code"] == null ? null : json["calling_code"],
        toplevelDomain:
            json["toplevel_domain"] == null ? null : json["toplevel_domain"],
        alpha3Code: json["alpha3_code"] == null ? null : json["alpha3_code"],
        population: json["population"] == null ? null : json["population"],
        isEu: json["is_eu"] == null ? null : json["is_eu"],
        isAr: json["is_ar"] == null ? null : json["is_ar"],
      );

  Map<String, dynamic> toJson() => {
        "capital": capital == null ? null : capital,
        "country_flag": countryFlag == null ? null : countryFlag,
        "flag_png": flagPng == null ? null : flagPng,
        "country_flag_emoji":
            countryFlagEmoji == null ? null : countryFlagEmoji,
        "country_flag_emoji_unicode":
            countryFlagEmojiUnicode == null ? null : countryFlagEmojiUnicode,
        "calling_code": callingCode == null ? null : callingCode,
        "toplevel_domain": toplevelDomain == null ? null : toplevelDomain,
        "alpha3_code": alpha3Code == null ? null : alpha3Code,
        "population": population == null ? null : population,
        "is_eu": isEu == null ? null : isEu,
        "is_ar": isAr == null ? null : isAr,
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

  factory Security.fromJson(Map<String, dynamic> json) => Security(
        isProxy: json["is_proxy"] == null ? null : json["is_proxy"],
        proxyType: json["proxy_type"] == null ? null : json["proxy_type"],
        isTor: json["is_tor"] == null ? null : json["is_tor"],
        isSpam: json["is_spam"] == null ? null : json["is_spam"],
        threatLevel: json["threat_level"] == null ? null : json["threat_level"],
      );

  Map<String, dynamic> toJson() => {
        "is_proxy": isProxy == null ? null : isProxy,
        "proxy_type": proxyType == null ? null : proxyType,
        "is_tor": isTor == null ? null : isTor,
        "is_spam": isSpam == null ? null : isSpam,
        "threat_level": threatLevel == null ? null : threatLevel,
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

  factory TimeZone.fromJson(Map<String, dynamic> json) => TimeZone(
        id: json["id"] == null ? null : json["id"],
        utc: json["UTC"] == null ? null : json["UTC"],
        gmtOffset: json["gmt_offset"] == null ? null : json["gmt_offset"],
        currentTime: json["current_time"] == null
            ? null
            : DateTime.parse(json["current_time"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "UTC": utc == null ? null : utc,
        "gmt_offset": gmtOffset == null ? null : gmtOffset,
        "current_time":
            currentTime == null ? null : currentTime.toIso8601String(),
      };
}
