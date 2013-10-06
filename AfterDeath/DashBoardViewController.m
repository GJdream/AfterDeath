//
//  DashBoardViewController.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-30.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "DashBoardViewController.h"
#import "SettingsViewController.h"
#import "MapViewController.h"
#import "EMailViewController.h"
#import "ClueViewController.h"

@interface DashBoardViewController ()

@end

@implementation DashBoardViewController

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
    
//    self.controlView = [[UIView alloc] initWithFrame:CGRectMake(10, 300, 300, 200)];
//    self.controlView.backgroundColor = [UIColor blackColor];
//    self.controlView.alpha = 0.5;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoMap:(id)sender {
    MapViewController *mvc = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
    self.view = mvc.view;
//    [self presentViewController:mvc animated:YES completion:nil];
}

- (IBAction)gotoEmail:(id)sender {
    EMailViewController *emvc = [[EMailViewController alloc] initWithNibName:@"EMailViewController" bundle:nil];
    [self presentViewController:emvc animated:YES completion:nil];
}


- (IBAction)bringUpGameDashBoard:(id)sender {
    
    [UIView animateWithDuration:0.5 animations:^{
        
        self.controlView.frame = CGRectMake(0, 300, 320, 268);
    }];

}

- (void)hideGameDashBoard {
    // dismiss controlView
    [UIView animateWithDuration:0.5 animations:^{
        self.controlView.frame = CGRectMake(0, 568, 320, 0);
    }];
}


- (IBAction)tapView:(id)sender {
    UITapGestureRecognizer *tap = (UITapGestureRecognizer *)sender;
    CGPoint point = [tap locationInView:self.view];
    if (!CGRectContainsPoint(self.controlView.frame, point)) {
        [self hideGameDashBoard];
    }
}

- (IBAction)viewClue:(id)sender {
    ClueViewController *cvc = [[ClueViewController alloc] initWithNibName:@"ClueViewController" bundle:nil];
    cvc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:cvc animated:YES completion:nil];
}
@end
