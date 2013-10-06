//
//  ClueViewController.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-4.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "ClueViewController.h"
#import "ClueSingleton.h"

@interface ClueViewController () <UITableViewDataSource>

@end

@implementation ClueViewController

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
    [self.clueTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"clue"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[ClueSingleton sharedClue] clueArray].count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *clue = @"clue";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:clue];
    if (!cell) {
        
    }
    return cell;
}

- (IBAction)closeClue:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
