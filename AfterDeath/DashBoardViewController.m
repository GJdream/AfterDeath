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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoMap:(id)sender {
    MapViewController *mvc = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
    [self presentViewController:mvc animated:YES completion:nil];
}

- (IBAction)gotoEmail:(id)sender {
    EMailViewController *emvc = [[EMailViewController alloc] initWithNibName:@"EMailViewController" bundle:nil];
    [self presentViewController:emvc animated:YES completion:nil];
}


@end
