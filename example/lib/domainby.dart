import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  DomainByResponse by = await ipfinder.getDomainBy("DZ");
  print(by.toJson()); // print json data
}
