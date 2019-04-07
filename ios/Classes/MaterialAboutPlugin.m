#import "MaterialAboutPlugin.h"
#import <material_about/material_about-Swift.h>

@implementation MaterialAboutPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMaterialAboutPlugin registerWithRegistrar:registrar];
}
@end
