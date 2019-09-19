import 'package:ipfinder/Exception/ipfinderException.dart';

class Asnvalidation {
  
  static validate(asn){
    final regexp = RegExp(r'^[0-9a-fA-F]+'); 
    if(regexp.hasMatch(asn) == false){
      throw IPfinderException('invalide asn');
    }
    return true;
  }
}