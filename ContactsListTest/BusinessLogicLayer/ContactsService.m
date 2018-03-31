//
//  ContactsService.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsService.h"

@implementation ContactsService

typedef void (^ObtainContactIdsCompletionHandler) (NSArray<NSString*> *uids);
typedef void (^ObtainContactCompletionHandler) (Contact* contacts);

# pragma mark - input methods
- (void) obtainContactsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count completionHandler: (ObtainContactsCompletionHandler) completionHandler {
    
}

# pragma mark - private methods
- (void) obtainContactIdsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count completionHandler: (ObtainContactsCompletionHandler) completionHandler {
    
}

- (void) obtainContactWithId: (NSString*) uid completionHandler: (ObtainContactCompletionHandler) completionHandler {
    
}

@end
