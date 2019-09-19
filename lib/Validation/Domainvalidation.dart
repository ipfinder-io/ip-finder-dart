import 'package:ipfinder/Exception/ipfinderException.dart';

class Domainvalidation { 
  static validate(domain){
    final regexp = RegExp(r'^[0-9a-fA-F]+'); 
    if(regexp.hasMatch(domain) == false){
      throw IPfinderException('invalide asn');
    }
    return true;
  }
}