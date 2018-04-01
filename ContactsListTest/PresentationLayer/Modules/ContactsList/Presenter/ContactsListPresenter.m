//
//  ContactsListPresenter.m
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListPresenter.h"

#import "ContactsListViewInput.h"
#import "ContactsListInteractorInput.h"

@interface ContactsListPresenter ()
@property (assign, nonatomic) BOOL isLoadingContacts;
@end

@implementation ContactsListPresenter

NSInteger const contactsBatchSize = 50;

#pragma mark - Методы ContactsListModuleInput
- (void)configureModule {

}

#pragma mark - Методы ContactsListViewOutput
- (void)viewDidLoad {
	[self.view setupInitialState];
    [self.interactor obtainContactsWithOffset: 0 contactsCount: contactsBatchSize];
}

- (void)allContactsDidShowWithContactsCount: (NSInteger) contactsCount {
    if (self.isLoadingContacts) {
        return;
    }
    [self.interactor obtainContactsWithOffset: contactsCount contactsCount: contactsBatchSize];
    self.isLoadingContacts = true;
}


#pragma mark - Методы ContactsListInteractorOutput
- (void)contactsDidObtain:(NSArray<Contact *> *)contacts {
    [self.view showContacts:contacts];
    self.isLoadingContacts = false;
}

@end
