//
//  DialViewController.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-1.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DialViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;

@property (strong, nonatomic) NSMutableString *dialShowString;
@end