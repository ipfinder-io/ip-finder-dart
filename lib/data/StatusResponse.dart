// To parse this JSON data, do
//
//     final statusResponse = statusResponseFromJson(jsonString);

import 'dart:convert';

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

    factory StatusResponse.fromJson(String str) => StatusResponse.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory StatusResponse.fromMap(Map<String, dynamic> json) => StatusResponse(
        apiKey: json["apiKey"],
        queriesPerDay: json["queriesPerDay"],
        queriesLeft: json["queriesLeft"],
        asqueriesPerDay: json["asqueriesPerDay"],
        asqueriesLeft: json["asqueriesLeft"],
        keyType: json["key_type"],
        keyInfo: json["key_info"],
        status: json["status"],
    );

    Map<String, dynamic> toMap() => {
        "apiKey": apiKey,
        "queriesPerDay": queriesPerDay,
        "queriesLeft": queriesLeft,
        "asqueriesPerDay": asqueriesPerDay,
        "asqueriesLeft": asqueriesLeft,
        "key_type": keyType,
        "key_info": keyInfo,
        "status": status,
    };
}
