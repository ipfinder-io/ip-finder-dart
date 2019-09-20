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

  IpResponse(
      {this.status,
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
      this.header});

  IpResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusMessage = json['status_message'];
    ip = json['ip'];
    type = json['type'];
    continentCode = json['continent_code'];
    continentName = json['continent_name'];
    countryCode = json['country_code'];
    countryName = json['country_name'];
    countryNativeName = json['country_native_name'];
    regionName = json['region_name'];
    city = json['city'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    timeZone = json['time_zone'] != null
        ? new TimeZone.fromJson(json['time_zone'])
        : null;
    currency = json['currency'] != null
        ? new Currency.fromJson(json['currency'])
        : null;
    languages = json['languages'] != null
        ? new Languages.fromJson(json['languages'])
        : null;
    connection = json['connection'] != null
        ? new Connection.fromJson(json['connection'])
        : null;
    security = json['security'] != null
        ? new Security.fromJson(json['security'])
        : null;
    header =
        json['header'] != null ? new Header.fromJson(json['header']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_message'] = this.statusMessage;
    data['ip'] = this.ip;
    data['type'] = this.type;
    data['continent_code'] = this.continentCode;
    data['continent_name'] = this.continentName;
    data['country_code'] = this.countryCode;
    data['country_name'] = this.countryName;
    data['country_native_name'] = this.countryNativeName;
    data['region_name'] = this.regionName;
    data['city'] = this.city;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    if (this.timeZone != null) {
      data['time_zone'] = this.timeZone.toJson();
    }
    if (this.currency != null) {
      data['currency'] = this.currency.toJson();
    }
    if (this.languages != null) {
      data['languages'] = this.languages.toJson();
    }
    if (this.connection != null) {
      data['connection'] = this.connection.toJson();
    }
    if (this.security != null) {
      data['security'] = this.security.toJson();
    }
    if (this.header != null) {
      data['header'] = this.header.toJson();
    }
    return data;
  }
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

  Location(
      {this.capital,
      this.countryFlag,
      this.flagPng,
      this.countryFlagEmoji,
      this.countryFlagEmojiUnicode,
      this.callingCode,
      this.toplevelDomain,
      this.alpha3Code,
      this.population,
      this.isEu,
      this.isAr});

  Location.fromJson(Map<String, dynamic> json) {
    capital = json['capital'];
    countryFlag = json['country_flag'];
    flagPng = json['flag_png'];
    countryFlagEmoji = json['country_flag_emoji'];
    countryFlagEmojiUnicode = json['country_flag_emoji_unicode'];
    callingCode = json['calling_code'];
    toplevelDomain = json['toplevel_domain'];
    alpha3Code = json['alpha3_code'];
    population = json['population'];
    isEu = json['is_eu'];
    isAr = json['is_ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['capital'] = this.capital;
    data['country_flag'] = this.countryFlag;
    data['flag_png'] = this.flagPng;
    data['country_flag_emoji'] = this.countryFlagEmoji;
    data['country_flag_emoji_unicode'] = this.countryFlagEmojiUnicode;
    data['calling_code'] = this.callingCode;
    data['toplevel_domain'] = this.toplevelDomain;
    data['alpha3_code'] = this.alpha3Code;
    data['population'] = this.population;
    data['is_eu'] = this.isEu;
    data['is_ar'] = this.isAr;
    return data;
  }
}

class TimeZone {
  String id;
  String uTC;
  int gmtOffset;
  String currentTime;

  TimeZone({this.id, this.uTC, this.gmtOffset, this.currentTime});

  TimeZone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uTC = json['UTC'];
    gmtOffset = json['gmt_offset'];
    currentTime = json['current_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['UTC'] = this.uTC;
    data['gmt_offset'] = this.gmtOffset;
    data['current_time'] = this.currentTime;
    return data;
  }
}

class Currency {
  String name;
  String symbol;
  String symbolNative;

  Currency({this.name, this.symbol, this.symbolNative});

  Currency.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
    symbolNative = json['symbol_native'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['symbol_native'] = this.symbolNative;
    return data;
  }
}

class Languages {
  String code;
  String name;
  String nameNative;

  Languages({this.code, this.name, this.nameNative});

  Languages.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    nameNative = json['name_native'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['name_native'] = this.nameNative;
    return data;
  }
}

class Connection {
  String asn;
  String organization;
  String domain;
  String type;

  Connection({this.asn, this.organization, this.domain, this.type});

  Connection.fromJson(Map<String, dynamic> json) {
    asn = json['asn'];
    organization = json['organization'];
    domain = json['domain'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asn'] = this.asn;
    data['organization'] = this.organization;
    data['domain'] = this.domain;
    data['type'] = this.type;
    return data;
  }
}

class Security {
  bool isProxy;
  bool proxyType;
  bool isTor;
  bool isSpam;
  String threatLevel;

  Security(
      {this.isProxy,
      this.proxyType,
      this.isTor,
      this.isSpam,
      this.threatLevel});

  Security.fromJson(Map<String, dynamic> json) {
    isProxy = json['is_proxy'];
    proxyType = json['proxy_type'];
    isTor = json['is_tor'];
    isSpam = json['is_spam'];
    threatLevel = json['threat_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_proxy'] = this.isProxy;
    data['proxy_type'] = this.proxyType;
    data['is_tor'] = this.isTor;
    data['is_spam'] = this.isSpam;
    data['threat_level'] = this.threatLevel;
    return data;
  }
}

class Header {
  int totalUserAgent;
  List<ListUserAgent> listUserAgent;

  Header({this.totalUserAgent, this.listUserAgent});

  Header.fromJson(Map<String, dynamic> json) {
    totalUserAgent = json['total_user_agent'];
    if (json['list_user_agent'] != null) {
      listUserAgent = new List<ListUserAgent>();
      json['list_user_agent'].forEach((v) {
        listUserAgent.add(new ListUserAgent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_user_agent'] = this.totalUserAgent;
    if (this.listUserAgent != null) {
      data['list_user_agent'] =
          this.listUserAgent.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListUserAgent {
  String userAgent;
  String browserName;
  String osName;
  String deviceType;

  ListUserAgent(
      {this.userAgent, this.browserName, this.osName, this.deviceType});

  ListUserAgent.fromJson(Map<String, dynamic> json) {
    userAgent = json['user_agent'];
    browserName = json['browser_name'];
    osName = json['os_name'];
    deviceType = json['device_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_agent'] = this.userAgent;
    data['browser_name'] = this.browserName;
    data['os_name'] = this.osName;
    data['device_type'] = this.deviceType;
    return data;
  }
}
