import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  var fire = await ipfinder.getFirewall("AS1", "nginx_deny");
  print(fire); // print json data
}
