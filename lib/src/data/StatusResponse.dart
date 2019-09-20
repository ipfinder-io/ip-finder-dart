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
class StatusResponse {
  String apiKey;
  int queriesPerDay;
  int queriesLeft;
  int asqueriesPerDay;
  int asqueriesLeft;
  String keyType;
  String keyInfo;
  String status;

  StatusResponse(
      {this.apiKey,
      this.queriesPerDay,
      this.queriesLeft,
      this.asqueriesPerDay,
      this.asqueriesLeft,
      this.keyType,
      this.keyInfo,
      this.status});

  StatusResponse.fromJson(Map<String, dynamic> json) {
    apiKey = json['apiKey'];
    queriesPerDay = json['queriesPerDay'];
    queriesLeft = json['queriesLeft'];
    asqueriesPerDay = json['asqueriesPerDay'];
    asqueriesLeft = json['asqueriesLeft'];
    keyType = json['key_type'];
    keyInfo = json['key_info'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apiKey'] = this.apiKey;
    data['queriesPerDay'] = this.queriesPerDay;
    data['queriesLeft'] = this.queriesLeft;
    data['asqueriesPerDay'] = this.asqueriesPerDay;
    data['asqueriesLeft'] = this.asqueriesLeft;
    data['key_type'] = this.keyType;
    data['key_info'] = this.keyInfo;
    data['status'] = this.status;
    return data;
  }
}
