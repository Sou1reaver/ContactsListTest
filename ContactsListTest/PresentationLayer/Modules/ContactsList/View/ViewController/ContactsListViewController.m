//
//  ContactsListViewController.m
//  DistilleryTestApp
//
//  Created by Vladimir Gordienko on 01/04/2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import "ContactsListViewController.h"
#import "ContactsListViewOutput.h"

@interface ContactsListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ContactsListViewController

#pragma mark - Life Circle

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.output didTriggerViewReadyEvent];
}

#pragma mark - ContactsListViewInput

- (void)setupInitialState {

}

@end
