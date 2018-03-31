//
//  Contact.h
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (strong, nonatomic) NSString  *uid;
@property (strong, nonatomic) NSString  *name;
@property (strong, nonatomic, nullable) NSData  *icon;

+ (Contact*) contactWithUid: (NSString*) uid name: (NSString*) name;

@end
