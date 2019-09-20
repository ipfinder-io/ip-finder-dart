<img src='https://camo.githubusercontent.com/46886c3e689a0d4a3f6c0733d1cab5d9f9a3926d/68747470733a2f2f697066696e6465722e696f2f6173736574732f696d616765732f6c6f676f732f6c6f676f2e706e67' height='60' alt='IP Finder'></a>
#  IPFinder Dart Client Library

The official Dart client library for the [IPFinder.io](https://ipfinder.io) get details for :
-  IP address details (city, region, country, postal code, latitude and more ..)
-  ASN details (Organization name, registry,domain,comany_type, and more .. )
-  Firewall by supported formats details (apache_allow,  nginx_deny, CIDR , and more ..)
-  IP Address Ranges by the Organization name  details (list_asn, list_prefixes , and more ..)
-  service status details (queriesPerDay, queriesLeft, key_type, key_info)
- Get Domain IP (asn, organization,country_code ....)
- Get Domain IP history (total_ip, list_ip,organization,asn ....)
- Get list Domain By ASN, Country,Ranges (select_by , total_domain  , list_domain ....)

## Getting Started
singup for a free account at [https://ipfinder.io/auth/signup](https://ipfinder.io/auth/signup), for Free IPFinder API access token.

The free plan is limited to 4,000 requests a day, and doesn't include some of the data fields
To enable all the data fields and additional request volumes see [https://ipfinder.io/pricing](https://ipfinder.io/pricing).

## Documentation

See the [official documentation](https://ipfinder.io/docs).

## Installation
First, add `ipfinder` as a dependency in your [pubspec.yaml](pubspec.yaml) file.

## With `free` TOKEN

```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder(); // null == free token
  IpResponse auth = await ipfinder.authentication();
  print(auth.toJson()); // print json data
  print(auth.location); // print location
}

```

## Authentication

```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  IpResponse auth = await ipfinder.authentication();
  print(auth.toJson()); // print json data
  print(auth.location); // print location
}
```

## Get IP address

```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  IpResponse ip = await ipfinder.getAddressInfo("1.0.0.0");
  print(ip.toJson()); // print json data
}
```

## Get ASN
This API available as part of our Pro and enterprise [https://ipfinder.io/pricing](https://ipfinder.io/pricing).

```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  AsnResponse asn = await ipfinder.getAsn("as1");
  print(asn.toJson()); // print json data
}
```

## Firewall
This API available as part of our  enterprise [https://ipfinder.io/pricing](https://ipfinder.io/pricing).
formats supported are :  `apache_allow`, `apache_deny`,`nginx_allow`,`nginx_deny`, `CIDR`, `linux_iptables`, `netmask`, `inverse_netmask`, `web_config_allow `, `web_config_deny`, `cisco_acl`, `peer_guardian_2`, `network_object`, `cisco_bit_bucket`, `juniper_junos`, `microtik`

```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  Response fire = await ipfinder.getFirewall("AS1", "nginx_deny");
  print(fire); // print json data
}
```

## Get IP Address Ranges
This API available as part of our  enterprise [https://ipfinder.io/pricing](https://ipfinder.io/pricing).

```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  RangeResponse range = await ipfinder.getRanges("Telecom Algeria");
  print(range.toJson()); // print json data
}
```

## Get service status

```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  StatusResponse status = await ipfinder.getStatus();
  print(status.toJson()); // print json data
}
```

## Get Domain IP


```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  DomainResponse domain = await ipfinder.getDomain("google.com");
  print(domain.toJson()); // print json data
}
```

## Get Domain IP history



```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  DomainHtResponse domain = await ipfinder.getDomainHistory("google.com");
  print(domain.toJson()); // print json data
}
```

## Get list Domain By ASN, Country,Ranges


```dart
import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  DomainByResponse by = await ipfinder.getDomainBy("DZ");
  print(by.toJson()); // print json data
}
```

## Add proxy
```dart
Ipfinder ipfinder =  Ipfinder('YOUR_TOKEN_GOES_HERE', 'https://ipfinder.yourdomain.com');
```

Sample codes under **example/** folder.


## Contact

Contact Us With Additional Questions About Our API, if you would like more information about our API that isn’t available in our IP geolocation API developer documentation, simply [contact](https://ipfinder.io/contact) us at any time and we’ll be able to help you find what you need.

## License
----

[![GitHub license](https://img.shields.io/github/license/ipfinder-io/ip-finder-dart.svg)](https://github.com/ipfinder-io/ip-finder-dart)
