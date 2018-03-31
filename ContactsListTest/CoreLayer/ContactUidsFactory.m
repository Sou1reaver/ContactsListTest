//
//  ContactUidsFactory.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactUidsFactory.h"

@implementation ContactUidsFactory

- (NSArray<NSString*> *) generateUidsWithCount: (NSInteger) count {
    NSMutableArray<NSString*> * array = [[NSMutableArray alloc] init];
    for (int i = 1; i<count; i+=1) {
        [array addObject: [NSString stringWithFormat: @"%d", i]];
    }
    return (NSArray*) array;
}

@end
