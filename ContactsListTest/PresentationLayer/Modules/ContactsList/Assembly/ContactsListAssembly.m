//
//  ContactsListAssembly.m
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListAssembly.h"
#import "ContactsListPresenter.h"
#import "ContactsListInteractor.h"
#import "ContactsService.h"
#import "StoryboardNames.h"
@import UIKit;

@implementation ContactsListAssembly
- (ContactsListViewController *) assembleModule {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName: kContactsListStoryboardName bundle:nil];
    ContactsListViewController* view = [storyboard instantiateViewControllerWithIdentifier: @"ContactsListViewController"];
    
    ContactsListPresenter *presenter = [[ContactsListPresenter alloc] init];
    ContactsListInteractor *interactor = [[ContactsListInteractor alloc] init];
    interactor.contactsService = [[ContactsService alloc] init];
    
    interactor.output = presenter;
    presenter.view = view;
    presenter.interactor = interactor;
    view.output = presenter;
    return view;
}
@end
