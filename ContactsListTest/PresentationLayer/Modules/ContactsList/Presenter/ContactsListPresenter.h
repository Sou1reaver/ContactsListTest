//
//  ContactsListPresenter.h
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListViewOutput.h"
#import "ContactsListInteractorOutput.h"
#import "ContactsListModuleInput.h"

@protocol ContactsListViewInput;
@protocol ContactsListInteractorInput;
@protocol ContactsListRouterInput;

@interface ContactsListPresenter : NSObject <ContactsListModuleInput, ContactsListViewOutput, ContactsListInteractorOutput>

@property (nonatomic, weak) id<ContactsListViewInput> view;
@property (nonatomic, strong) id<ContactsListInteractorInput> interactor;
@property (nonatomic, strong) id<ContactsListRouterInput> router;

@end
