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
    [self.interactor obtainContactsWithOffset: contactsCount-1 contactsCount: contactsBatchSize];
}


#pragma mark - Методы ContactsListInteractorOutput
- (void)contactsDidObtain:(NSArray<Contact *> *)contacts {
    [self.view showContacts:contacts];
}

@end
