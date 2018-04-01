//
//  ContactsListViewController.m
//  ContactsListTest
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListViewController.h"
#import "ContactsListViewOutput.h"
#import "ContactListTableViewCell.h"
#import "ContactListCellConfgurator.h"

@interface ContactsListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray<Contact *> *contacts;
@property (strong, nonatomic) ContactListCellConfgurator *cellConfgurator;
@end

@implementation ContactsListViewController

NSString *const contactListTableViewCellId = @"ContactListTableViewCell";

#pragma mark - Life Circle
- (void)viewDidLoad {
	[super viewDidLoad];
    
	[self.output viewDidLoad];
}


#pragma mark - Private Methods
- (void) registrationTableViewCells {
    UINib *contactListTableViewCellNib = [UINib nibWithNibName: contactListTableViewCellId bundle:nil];
    if (!contactListTableViewCellNib) {
        NSAssert(NO, @"ContactsListViewController: - contactListTableViewCellNib is nil");
    }
    [self.tableView registerNib:contactListTableViewCellNib forCellReuseIdentifier:contactListTableViewCellId];
}

- (void) setNewContacts: (NSArray<Contact *> *)contacts {
    self.contacts = contacts.mutableCopy;
    [self.tableView reloadData];
}

- (void) addNewContacts: (NSArray<Contact *> *)contacts {
    NSIndexSet *indexes = [NSIndexSet indexSetWithIndexesInRange:
                          NSMakeRange(self.contacts.count-1,[contacts count])];
    
    [self.contacts insertObjects:contacts atIndexes:indexes];
    [self.tableView reloadData];
}


#pragma mark - ContactsListViewInput
- (void)setupInitialState {
     _cellConfgurator = [[ContactListCellConfgurator alloc] init];
    [self registrationTableViewCells];
}

- (void)showContacts:(NSArray<Contact *> *)contacts {
    if (contacts.count < 1) {
        return;
    }
    if (self.contacts.count < 1) {
        [self setNewContacts: contacts];
    } else {
        [self addNewContacts:contacts];
    }
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ContactListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: contactListTableViewCellId forIndexPath: indexPath];
    [_cellConfgurator configureCell:cell withContact: [self.contacts objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == (self.contacts.count-1)) {
        [self.output allContactsDidShowWithContactsCount: self.contacts.count];
    }
}

@end


