//
//  EMailViewController.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-2.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "EMailViewController.h"
#import "EmailCell.h"
#import "NewEmailViewController.h"

@interface EMailViewController ()

@property (weak, nonatomic) IBOutlet UIProgressView *sendingProgress;

@end

@implementation EMailViewController

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
    // Do any additional setup after loading the view from its nib.
//    NSArray *array = [NSArray array];
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"EmailData" ofType:@"plist"];
    self.contentArray = [NSArray arrayWithContentsOfFile:plistPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EmailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"emailCell"];
    cell.senderName.text = [self.contentArray[indexPath.row] valueForKey:@"v0"];
    cell.titleString.text = [self.contentArray[indexPath.row] valueForKey:@"v1"];
    cell.contentString.text = [self.contentArray[indexPath.row] valueForKey:@"v2"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contentArray.count;
}

- (IBAction)newEmail:(id)sender {
    NewEmailViewController *nev = [[NewEmailViewController alloc] initWithNibName:@"NewEmailViewController" bundle:nil];
    nev.delegate = self;
    [self presentViewController:nev animated:YES completion:nil];
}

- (void)emailDidClickSent:(id)sender {
    self.sendingProgress.hidden = NO;
    self.sendingProgress.progress = 0;
    [self.sendingProgress setProgress:1 animated:YES];
}


@end
