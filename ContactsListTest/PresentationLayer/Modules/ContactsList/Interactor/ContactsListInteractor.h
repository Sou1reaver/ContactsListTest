//
//  ContactsListInteractor.h
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListInteractorInput.h"
#import "ContactsService.h"

@protocol ContactsListInteractorOutput;

@interface ContactsListInteractor : NSObject <ContactsListInteractorInput>

@property (nonatomic, strong) ContactsService *contactsService;
@property (nonatomic, weak) id<ContactsListInteractorOutput> output;

@end
