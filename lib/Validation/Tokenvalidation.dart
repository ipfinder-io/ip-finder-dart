import 'package:ipfinder/Exception/ipfinderException.dart';
class Tokenvalidation {
  static validate(token){
    if(token.length <= 25){
      throw IPfinderException('invalide asn');
    }
    return true;
  }
}