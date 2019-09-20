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

/// The Firewallvalidation API class.
class Firewallvalidation {
  ///  Get details for an IP address.
  ///
  /// [by] AS number as (e.g. AS1) or country ISO 3166-1 alpha-2 country code (e.g. US).
  /// [formats] formats supported are apache_allow, apache_deny,nginx_allow,nginx_deny, CIDR, linux_iptables, netmask, inverse_netmask, web_config_allow, web_config_deny, cisco_acl, peer_guardian_2, network_object, cisco_bit_bucket, juniper_junos, microtik.
  /// Throws an [IPfinderException] if is false.
  static validate(by, formats) {
    final regexp = RegExp(r'^((as|AS)(\d+)|(A(D|E|F|G|I|L|M|N|O|R|S|T|Q|U|W|X|Z)|B(A|B|D|E|F|G|H|I|J|L|M|N|O|R|S|T|V|W|Y|Z)|C(A|C|D|F|G|H|I|K|L|M|N|O|R|U|V|X|Y|Z)|D(E|J|K|M|O|Z)|E(C|E|G|H|R|S|T)|F(I|J|K|M|O|R)|G(A|B|D|E|F|G|H|I|L|M|N|P|Q|R|S|T|U|W|Y)|H(K|M|N|R|T|U)|I(D|E|Q|L|M|N|O|R|S|T)|J(E|M|O|P)|K(E|G|H|I|M|N|P|R|W|Y|Z)|L(A|B|C|I|K|R|S|T|U|V|Y)|M(A|C|D|E|F|G|H|K|L|M|N|O|Q|P|R|S|T|U|V|W|X|Y|Z)|N(A|C|E|F|G|I|L|O|P|R|U|Z)|OM|P(A|E|F|G|H|K|L|M|N|R|S|T|W|Y)|QA|R(E|O|S|U|W)|S(A|B|C|D|E|G|H|I|J|K|L|M|N|O|R|T|V|Y|Z)|T(C|D|F|G|H|J|K|L|M|N|O|R|T|V|W|Z)|U(A|G|M|S|Y|Z)|V(A|C|E|G|I|N|U)|W(F|S)|Y(E|T)|Z(A|M|W)))$');
    if (regexp.hasMatch(by) == false) {
      throw IPfinderException(
          'Invalid Firewall string please use AS number or ISO 3166-1 alpha-2 country');
    }
    final regexpf = RegExp(r'^(apache_allow|apache_deny|nginx_allow|nginx_deny|CIDR|linux_iptables|netmask|inverse_netmask|web_config_allow|web_config_deny|cisco_acl|peer_guardian_2|network_object|cisco_bit_bucket|juniper_junos|microtik)$');
    if (regexpf.hasMatch(formats) == false) {
      throw IPfinderException(
          'Invalid Format supported format https://ipfinder.io/docs/?shell#firewall');
    }
    return true;
  }
}
