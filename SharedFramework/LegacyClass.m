//
//  LegacyClass.m
//  SharedLibrary
//
//  Created by Samuel Giddins on 5/15/22.
//

#import "LegacyClass.h"

#if __has_include(<SharedFramework/SharedFramework-Swift.h>)
#import <SharedFramework/SharedFramework-Swift.h>
#else
#import "SharedFramework/SharedFramework-Swift.h"
#endif

@implementation LegacyClass
- (instancetype)init {
    return [super init];
}
- (BOOL)returnsYES {
    return YES;
}
- (BOOL)returnsNO {
    return [[SwiftSharedClass alloc] init].one == 0;
}
@end
