//
//  ContactsService.m
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 31.03.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsService.h"
#import "ContactUidsFactory.h"
#import "Names.h"
#import "NSData+Extensions.h"

@interface ContactsService ()
@property (strong, nonatomic) ContactUidsFactory *uidsFactory;
@property (strong, nonatomic) dispatch_queue_t queue;
@property (strong, nonatomic) NSArray<NSString *> *contactUids;
@property (strong, nonatomic) Names *names;
@end


@implementation ContactsService
NSInteger const contactUidsCount = 1000;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _queue = dispatch_queue_create("ContactsServiceQueue", NULL);
        _uidsFactory = [[ContactUidsFactory alloc] init];
        _names = [[Names alloc] init];
    }
    return self;
}

# pragma mark - typedef
typedef void (^ObtainContactIdsCompletionHandler) (NSArray<NSString*> *uids);
typedef void (^ObtainContactCompletionHandler) (Contact* contacts);


# pragma mark - input methods
- (void) obtainContactsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count completionHandler: (ObtainContactsCompletionHandler) completionHandler {
    __weak ContactsService *weakSelf = self;
   [self obtainContactIdsWithOffset: offset
                      contactsCount: count
                  completionHandler:^(NSArray<NSString *> *uids) {
                      NSMutableArray<Contact*> *contacts = [[NSMutableArray alloc] init];
                      for (NSString* uid in uids) {
                          [contacts addObject:[weakSelf obtainContactWithId:uid]];
                      }
                      
                      // back in main thread
                      dispatch_async(dispatch_get_main_queue(), ^{
                          completionHandler(contacts);
                      });
                  }];
}

# pragma mark - private methods
// imitation async request to database
- (void) obtainContactIdsWithOffset: (NSInteger) offset contactsCount: (NSInteger) count completionHandler: (ObtainContactIdsCompletionHandler) completionHandler  {
    __weak ContactsService *weakSelf = self;
    dispatch_async(self.queue, ^{
        if (!weakSelf.contactUids) {
            weakSelf.contactUids = [weakSelf.uidsFactory generateUidsWithCount: contactUidsCount];
        }
        
        if (weakSelf.contactUids.count < offset) {
            return completionHandler(@[]);
        }
        
        NSInteger diff = (offset+count) - weakSelf.contactUids.count;
        NSInteger newCount = count;
        if (diff > 0) {
            newCount = count - diff;
        }
        completionHandler([weakSelf.contactUids subarrayWithRange: NSMakeRange(offset, newCount)]);
    });
}


- (Contact *) obtainContactWithId: (NSString *) uid {
    NSInteger randomIndex = arc4random_uniform((uint32_t)(self.names.list.count + 1));
    BOOL showImage = (BOOL) arc4random_uniform(2);
    
    NSString * name = [self.names.list objectAtIndex:randomIndex];
    Contact* contact = [Contact contactWithUid: uid name: name];
    if (showImage) {
        contact.icon = [NSData dataWithImageName: @"pennywise_icon"];
    }
    return contact;
}

@end




