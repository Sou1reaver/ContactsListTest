//
//  ContactsListInteractor.m
//  DistilleryTestApp
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListInteractor.h"

#import "ContactsListInteractorOutput.h"

@implementation ContactsListInteractor

#pragma mark - ContactsListInteractorInput
- (void) obtainContactsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count {
    if (!self.contactsService) {
        NSAssert(NO, @"ContactsListInteractor: - contactsService is nil");
    }
    __weak typeof (self) weakSelf = self;
    [self.contactsService obtainContactsWithOffset: offset
                                     contactsCount: count
                                 completionHandler:^(NSArray<Contact *> *contacts) {
                                     [weakSelf.output contactsDidObtain:contacts];
                                 }];
}

@end
