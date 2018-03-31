//
//  Contact.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "Contact.h"

@implementation Contact
+ (Contact*) contactWithUid: (NSString*) uid name: (NSString*) name {
    Contact* contact = [[Contact alloc] init];
    contact.uid = uid;
    contact.name = name;
    return contact;
}
@end
