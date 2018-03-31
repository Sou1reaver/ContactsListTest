//
//  FakeContactsDatabase.h
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

typedef void (^ObtainContactIdsCompletionHandler) (NSArray<NSString*> *uids);

@interface FakeContactsDatabase : NSObject

- (void) obtainContactIdsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count completionHandler: (ObtainContactIdsCompletionHandler) completionHandler;
- (Contact *) obtainContactWithId: (NSString *) uid;

@end
