//
//  DialViewController.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-1.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "DialViewController.h"

@interface DialViewController ()

@property (weak, nonatomic) IBOutlet UIView *dialPanelView;

@end

@implementation DialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    for (UIButton *a in self.dialPanelView.subviews) {
        if ([a isKindOfClass:[UIButton class]]) {
            [a addTarget:self action:@selector(dialPressed:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)dialPressed:(UIView *)sender{
    NSInteger tag = sender.tag;
    
    NSString *tagString = tag <= 9 ? [NSString stringWithFormat:@"%d", tag] : tag == 10 ? @"*" : @"#";
    [self.dialShowString appendString:tagString];
    self.phoneNumberLabel.text = self.dialShowString;
    if (self.dialShowString == nil) {
        self.dialShowString = [NSMutableString new];
    }
}
@end
