import 'package:ipfinder/ipfinder.dart';

void main() async {
  Ipfinder ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE");
  var range = await ipfinder.getRanges("Telecom Algeria");
  print(range.toJson()); // print json data
}
