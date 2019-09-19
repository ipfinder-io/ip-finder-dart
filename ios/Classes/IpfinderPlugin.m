#import "IpfinderPlugin.h"
#import <ipfinder/ipfinder-Swift.h>

@implementation IpfinderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIpfinderPlugin registerWithRegistrar:registrar];
}
@end
