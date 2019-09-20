import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  StatusResponse status = await ipfinder.getStatus();
  print(status.toJson()); // print json data
}
