//
//  ShowContactViewController.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-3.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Contacter;

@interface ShowContactViewController : UIViewController <UIAlertViewDelegate>

@property (strong, nonatomic) Contacter *contacter;

@end
