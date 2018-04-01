//
//  ContactsListPresenter.m
//  DistilleryTestApp
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListPresenter.h"

#import "ContactsListViewInput.h"
#import "ContactsListInteractorInput.h"

@implementation ContactsListPresenter

#pragma mark - Методы ContactsListModuleInput
- (void)configureModule {

}

#pragma mark - Методы ContactsListViewOutput
- (void)viewDidLoad {
	[self.view setupInitialState];
}

#pragma mark - Методы ContactsListInteractorOutput
- (void)contactsDidObtain:(NSArray<Contact *> *)contacts {
    
}

@end
