import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  AsnResponse asn = await ipfinder.getAsn("as1");
  print(asn.toJson()); // print json data
}
