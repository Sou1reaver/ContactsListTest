//
//  ContactsListViewController.h
//  DistilleryTestApp
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ContactsListViewInput.h"

@protocol ContactsListViewOutput;

@interface ContactsListViewController : UIViewController <ContactsListViewInput>

@property (nonatomic, strong) id<ContactsListViewOutput> output;

@end
