import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  var status = await ipfinder.getStatus();
  print(status.toJson()); // print json data
}
