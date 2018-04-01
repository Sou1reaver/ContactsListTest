//
//  ContactListCellConfgurator.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactListCellConfgurator.h"

@implementation ContactListCellConfgurator

- (void) configureCell:(ContactListTableViewCell *) cell withContact: (Contact *) contact; {
    cell.nameLabel.text = contact.name;
    UIImage *icon = [UIImage imageWithData: contact.icon];
    if (icon) {
        cell.iconImageView.image = icon;
        cell.imageLabel.text = @"";
    } else {
        cell.iconImageView.image = nil;
        if (contact.name.length > 1) {
            cell.imageLabel.text = [[contact.name substringWithRange:NSMakeRange(0, 2)] uppercaseString];
        } else {
            cell.imageLabel.text = @"";
        }
    }
}

@end
