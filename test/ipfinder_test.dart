//import "package:test/test.dart";

import 'package:ipfinder/ipfinder.dart';

void main() {
 //  test('adds one to input values', () {
    Ipfinder conf = Ipfinder();
    var auth =  conf.getStatus();
    print(auth);
     //final calculator = Calculator();
     //expect(calculator.addOne(2), 3);
     //expect(calculator.addOne(-7), -6);
     //expect(calculator.addOne(0), 1);
     //expect(() => calculator.addOne(null), throwsNoSuchMethodError);

  // });

}
