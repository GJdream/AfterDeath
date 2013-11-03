//
//  EMailViewController.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-2.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewEmailViewController.h"

@interface EMailViewController : UIViewController <UITableViewDataSource, NewEmailProtocal>

@property (strong, nonatomic) NSArray *contentArray;

@end
