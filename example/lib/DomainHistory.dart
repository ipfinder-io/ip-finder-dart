import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  var domain = await ipfinder.getDomainHistory("google.com");
  print(domain.toJson()); // print json data
}
