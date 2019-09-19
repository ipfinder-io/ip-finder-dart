import 'package:ipfinder/Exception/ipfinderException.dart';

class Firewallvalidation {
  static validate(by, formats){
    final regexp = RegExp(r'^[0-9a-fA-F]+'); 
    if(regexp.hasMatch(by) == false){
      throw IPfinderException('invalide asn');
    }
    final regexpf = RegExp(r'^[0-9a-fA-F]+'); 
    if(regexpf.hasMatch(formats) == false){
      throw IPfinderException('invalide asn');
    }
    return true;
  }
}