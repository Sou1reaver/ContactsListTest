//
//  StringValidator.h
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringValidator : NSObject
- (BOOL) isLatinCharactersOnlyInString: (nullable NSString *) string;
@end
