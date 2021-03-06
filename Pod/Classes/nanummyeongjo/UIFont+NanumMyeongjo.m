#import "UIFont+NanumMyeongjo.h"

#import <CoreText/CoreText.h>
#import "GFIFontLoader.h"

@implementation UIFont (NanumMyeongjo)

+ (instancetype)nanumMyeongjoFontOfSize:(CGFloat)size {
  static dispatch_once_t onceToken;
  [GFIFontLoader loadFontFile:@"NanumMyeongjo-Regular"
                   fromBundle:@"NanumMyeongjo"
                    onceToken:&onceToken];
  return [self fontWithName:@"NanumMyeongjo" size:size];
}

+ (instancetype)nanumMyeongjoBoldFontOfSize:(CGFloat)size {
  static dispatch_once_t onceToken;
  [GFIFontLoader loadFontFile:@"NanumMyeongjo-Bold"
                   fromBundle:@"NanumMyeongjo"
                    onceToken:&onceToken];
  return [self fontWithName:@"NanumMyeongjoBold" size:size];
}

+ (instancetype)nanumMyeongjoExtraBoldFontOfSize:(CGFloat)size {
  static dispatch_once_t onceToken;
  [GFIFontLoader loadFontFile:@"NanumMyeongjo-ExtraBold"
                   fromBundle:@"NanumMyeongjo"
                    onceToken:&onceToken];
  return [self fontWithName:@"NanumMyeongjoExtraBold" size:size];
}

@end

