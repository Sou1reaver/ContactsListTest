//
//  ContactListCellConfgurator.h
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactListTableViewCell.h"
#import "Contact.h"
@import UIKit

@interface ContactListCellConfgurator : NSObject
- (void) configureCell:(ContactListTableViewCell *) cell withContact: (Contact *) contact;
@end
