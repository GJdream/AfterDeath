//
//  EmailCell.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-3.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmailCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *senderName;

@property (weak, nonatomic) IBOutlet UILabel *titleString;

@property (weak, nonatomic) IBOutlet UILabel *contentString;

@end
