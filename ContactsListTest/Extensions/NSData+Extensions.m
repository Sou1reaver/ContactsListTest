//
//  NSData+Extensions.m
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "NSData+Extensions.h"
@import UIKit;

@implementation NSData (Extensions)

+ (NSData*) dataWithImageName: (nullable NSString*) imageName {
    UIImage* image = [UIImage imageNamed: imageName];
    if (image) {
        return UIImagePNGRepresentation(image);
    }
    return nil;
}

@end
