//
//  ContactsListLaunchRouter.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListLaunchRouter.h"
#import "ContactsListAssembly.h"
#import "ContactsListViewController.h"

@interface ContactsListLaunchRouter ()
@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) ContactsListAssembly *contactsListAssembly;
@end


@implementation ContactsListLaunchRouter

#pragma mark - Initialization
- (instancetype)initWithWindow:(UIWindow *)window; {
    self = [super init];
    if (self) {
        _window = window;
        _contactsListAssembly = [[ContactsListAssembly alloc] init];
    }
    return self;
}


#pragma mark - input methods
- (void) openContactsListModule {
    
    UINavigationController *navVC = (UINavigationController *)self.window.rootViewController;
    if (!navVC) {
        NSAssert(NO, @"ContactsListLaunchRouter: - navigation controller is nil");
    }
    
    ContactsListViewController *vc = [self.contactsListAssembly assembleModule];
    [navVC setViewControllers:@[vc]];
    [self.window makeKeyAndVisible];
}

@end
