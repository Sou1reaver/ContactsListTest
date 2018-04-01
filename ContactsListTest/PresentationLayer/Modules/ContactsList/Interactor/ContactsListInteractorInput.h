//
//  ContactsListInteractorInput.h
//  DistilleryTestApp
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ContactsListInteractorInput <NSObject>
- (void) obtainContactsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count;
@end
