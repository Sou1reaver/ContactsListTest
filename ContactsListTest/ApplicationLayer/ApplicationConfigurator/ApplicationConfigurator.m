//
//  ApplicationConfigurator.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ApplicationConfigurator.h"
#import "ContactsListLaunchRouter.h"

@interface ApplicationConfigurator ()
@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) ContactsListLaunchRouter *contactsListLaunchRouter;
@end

@implementation ApplicationConfigurator

#pragma mark - Initialization
- (instancetype)initWithWindow:(UIWindow *)window; {
    self = [super init];
    if (self) {
        _window = window;
        _contactsListLaunchRouter = [[ContactsListLaunchRouter alloc] initWithWindow: window];
    }
    return self;
}

#pragma mark - input methods
- (void) initialConfigure {
    [self.contactsListLaunchRouter openContactsListModule];
}

@end
