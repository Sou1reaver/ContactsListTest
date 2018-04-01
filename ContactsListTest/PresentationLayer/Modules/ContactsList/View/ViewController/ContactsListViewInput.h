//
//  ContactsListViewInput.h
//  DistilleryTestApp
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@protocol ContactsListViewInput <NSObject>

- (void)setupInitialState;
- (void)showContacts: (NSArray<Contact *> *) contacts;

@end
