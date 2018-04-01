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

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы ContactsListInteractorOutput

@end
