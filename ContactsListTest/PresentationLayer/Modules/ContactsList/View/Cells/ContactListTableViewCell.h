//
//  ContactListTableViewCell.h
//  ContactsListTest
//
//  Created by Владимир Гордиенко on 01.04.2018.
//  Copyright © 2018 Vladimir Gordienko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *imageLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@end
