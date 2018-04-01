//
//  ContactsService.h
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


typedef void (^ObtainContactsCompletionHandler) (NSArray<Contact*> *contacts);

@interface ContactsService : NSObject
- (void) obtainContactsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count completionHandler: (ObtainContactsCompletionHandler) completionHandler;
@end
