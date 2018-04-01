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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cellConfgurator = [[ContactListCellConfgurator alloc] init];
    }
    return self;
}

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
    [self.contacts addObjectsFromArray: contacts];
    NSMutableArray *indexPathArray = [[NSMutableArray alloc] init];
    NSInteger startIndex = self.contacts.count-contacts.count+1;
    NSInteger endIndex = self.contacts.count;
    
    for (NSInteger i = startIndex; i < endIndex; i+=1) {
        [indexPathArray addObject:[NSIndexPath indexPathForRow: i inSection:0]];
    }
    [self.tableView beginUpdates];
    [self.tableView insertRowsAtIndexPaths: indexPathArray withRowAnimation: UITableViewRowAnimationAutomatic];
}


#pragma mark - ContactsListViewInput
- (void)setupInitialState {
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

@end


