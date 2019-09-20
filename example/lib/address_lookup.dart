import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  IpResponse ip = await ipfinder.getAddressInfo("1.0.0.0");
  print(ip.toJson()); // print json data
}
