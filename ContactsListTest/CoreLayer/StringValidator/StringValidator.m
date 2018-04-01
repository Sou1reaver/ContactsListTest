//
//  StringValidator.m
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "StringValidator.h"

@implementation StringValidator

- (BOOL) isLatinLowercaseCharactersOnlyInString: (nullable NSString *) string {
    if (!string) {
        return NO;
    }
    NSString *latinRegEx = @"[a-z]+";
    NSPredicate *latinPredicate = [NSPredicate predicateWithFormat: @"SELF MATCHES %@", latinRegEx];
    return [latinPredicate evaluateWithObject: string];
}

@end
