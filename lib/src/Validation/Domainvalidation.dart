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

import 'package:ipfinder/ipfinder.dart';

/// The Domainvalidation API class.
class Domainvalidation {
  ///  Helper method for validating domain name.
  ///
  /// [domain] passing in a single website name domain name.
  /// Throws an [IPfinderException] if is false.
  static validate(domain) {
    final regexp = RegExp(r'^(?!\-)(?:[a-zA-Z\d\-]{0,62}[a-zA-Z\d]\.){1,126}(?!\d+)[a-zA-Z\d]{1,63}$');
    if (regexp.hasMatch(domain) == false) {
      throw IPfinderException('Invalid Domain name');
    }
    return true;
  }
}
