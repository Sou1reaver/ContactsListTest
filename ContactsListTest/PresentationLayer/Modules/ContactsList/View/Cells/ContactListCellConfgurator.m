//
//  ContactListCellConfgurator.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactListCellConfgurator.h"
#import "StringValidator.h"

@interface ContactListCellConfgurator ()
@property (strong, nonatomic) StringValidator *stringValidator;
@end

@implementation ContactListCellConfgurator
NSString *const defaultContactName = @"noname";

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stringValidator = [[StringValidator alloc] init];
    }
    return self;
}

- (void) configureCell:(ContactListTableViewCell *) cell withContact: (Contact *) contact; {
    NSString *name = @"";
    if (![self.stringValidator isLatinLowercaseCharactersOnlyInString:contact.name] || contact.name.length < 2) {
        name = defaultContactName;
    } else {
        name = contact.name;
    }
    cell.nameLabel.text = name;
    
    UIImage *icon = [UIImage imageWithData: contact.icon];
    if (icon) {
        cell.iconImageView.image = icon;
        cell.imageLabel.text = @"";
    } else {
        cell.iconImageView.image = nil;
        cell.imageLabel.text = [[name substringWithRange:NSMakeRange(0, 2)] uppercaseString];
    }
}

@end
