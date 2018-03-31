//
//  ContactUidsFactory.h
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactUidsFactory : NSObject
- (NSArray<NSString*> *) generateUidsWithCount: (NSInteger) count;
@end
