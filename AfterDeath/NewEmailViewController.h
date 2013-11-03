//
//  NewEmailViewController.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-3.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NewEmailProtocal <NSObject>
- (void)emailDidClickSent:(id)sender;

@end

@interface NewEmailViewController : UIViewController <UITableViewDelegate>

@property (weak, nonatomic) id<NewEmailProtocal> delegate;

@end
