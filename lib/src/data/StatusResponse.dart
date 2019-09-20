// To parse this JSON data, do
//
//     final statusResponse = statusResponseFromJson(jsonString);

import 'dart:convert';

StatusResponse statusResponseFromJson(String str) =>
    StatusResponse.fromJson(json.decode(str));

String statusResponseToJson(StatusResponse data) => json.encode(data.toJson());

class StatusResponse {
  String apiKey;
  int queriesPerDay;
  int queriesLeft;
  int asqueriesPerDay;
  int asqueriesLeft;
  String keyType;
  String keyInfo;
  String status;

  StatusResponse({
    this.apiKey,
    this.queriesPerDay,
    this.queriesLeft,
    this.asqueriesPerDay,
    this.asqueriesLeft,
    this.keyType,
    this.keyInfo,
    this.status,
  });

  factory StatusResponse.fromJson(Map<String, dynamic> json) => StatusResponse(
        apiKey: json["apiKey"] == null ? null : json["apiKey"],
        queriesPerDay:
            json["queriesPerDay"] == null ? null : json["queriesPerDay"],
        queriesLeft: json["queriesLeft"] == null ? null : json["queriesLeft"],
        asqueriesPerDay:
            json["asqueriesPerDay"] == null ? null : json["asqueriesPerDay"],
        asqueriesLeft:
            json["asqueriesLeft"] == null ? null : json["asqueriesLeft"],
        keyType: json["key_type"] == null ? null : json["key_type"],
        keyInfo: json["key_info"] == null ? null : json["key_info"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "apiKey": apiKey == null ? null : apiKey,
        "queriesPerDay": queriesPerDay == null ? null : queriesPerDay,
        "queriesLeft": queriesLeft == null ? null : queriesLeft,
        "asqueriesPerDay": asqueriesPerDay == null ? null : asqueriesPerDay,
        "asqueriesLeft": asqueriesLeft == null ? null : asqueriesLeft,
        "key_type": keyType == null ? null : keyType,
        "key_info": keyInfo == null ? null : keyInfo,
        "status": status == null ? null : status,
      };
}
