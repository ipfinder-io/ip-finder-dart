import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  DomainResponse domain = await ipfinder.getDomain("google.com");
  print(domain.toJson()); // print json data
}
