import 'package:ipfinder/Exception/ipfinderException.dart';
class Ipvalidation { 
  static validate(ip){
    final regexp = RegExp(r'^[0-9a-fA-F]+'); 
    if(regexp.hasMatch(ip) == false){
      throw IPfinderException('invalide asn');
    }
    return true;
  }
}