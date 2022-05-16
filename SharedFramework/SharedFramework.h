//
//  SharedFramework.h
//  SharedFramework
//
//  Created by Samuel Giddins on 5/15/22.
//

#import <Foundation/Foundation.h>

//! Project version number for SharedFramework.
FOUNDATION_EXPORT double SharedFrameworkVersionNumber;

//! Project version string for SharedFramework.
FOUNDATION_EXPORT const unsigned char SharedFrameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <SharedFramework/PublicHeader.h>

#if __has_include(<SharedFramework/LegacyClass.h>)
#import <SharedFramework/LegacyClass.h>
#elif __has_include("SharedFramework/LegacyClass.h")
#import "SharedFramework/LegacyClass.h"
#import "SharedFramework/LegacyClass.h"
#else
#error missing
#endif
