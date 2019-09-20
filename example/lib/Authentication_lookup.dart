import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  var auth = await ipfinder.authentication();
  print(auth.toJson()); // print json data
  print(auth.location); // print location
}
