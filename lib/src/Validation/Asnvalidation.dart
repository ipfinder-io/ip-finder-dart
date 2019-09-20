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

/// The Asnvalidation API class.
class Asnvalidation {
  ///  Helper method for validating an argument if it is asn number.
  ///
  /// [asn] The AS number you want details for
  /// Throws an [IPfinderException] if is false.
  static validate(String asn) {
    final regexp = RegExp(r'^(as|AS)(\d+)$');
    if (regexp.hasMatch(asn) == false) {
      throw IPfinderException('Invalid asn number');
    }
    return true;
  }
}
