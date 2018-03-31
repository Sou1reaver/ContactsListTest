//
//  ContactsService.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsService.h"
#import "FakeContactsDatabase.h"

@interface ContactsService ()
@property (strong, nonatomic) FakeContactsDatabase *contactsDatabase;
@end


@implementation ContactsService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactsDatabase = [[FakeContactsDatabase alloc] init];
    }
    return self;
}

# pragma mark - typedef
typedef void (^ObtainContactIdsCompletionHandler) (NSArray<NSString*> *uids);
typedef void (^ObtainContactCompletionHandler) (Contact* contacts);


# pragma mark - input methods
- (void) obtainContactsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count completionHandler: (ObtainContactsCompletionHandler) completionHandler {
    __weak typeof (self) weakSelf = self;
    [self.contactsDatabase obtainContactIdsWithOffset: offset
                                        contactsCount: count
                                    completionHandler:^(NSArray<NSString *> *uids) {
                                        NSMutableArray<Contact*> *contacts = [[NSMutableArray alloc] init];
                                        for (NSString* uid in uids) {
                                            [contacts addObject:[weakSelf.contactsDatabase obtainContactWithId:uid]];
                                        }
                                        
                                        // back in main thread
                                        dispatch_async(dispatch_get_main_queue(), ^{
                                            completionHandler(contacts);
                                        });
                                    }];
}


@end




