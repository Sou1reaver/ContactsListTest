//
//  ApplicationConfigurator.h
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface ApplicationConfigurator : NSObject
- (instancetype)initWithWindow:(UIWindow *)window;
- (void) initialConfigure;
@end
