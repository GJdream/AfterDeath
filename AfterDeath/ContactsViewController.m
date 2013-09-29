//
//  ContactsViewController.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-29.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "ContactsViewController.h"
#import "Contacter.h"

@interface ContactsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *contactTable;

@end

@implementation ContactsViewController

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
    self.contactList = [[ContactList alloc] init];
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
    return [self.contactList.contactArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"contact"];
    if (cell == nil) {
        cell= [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: @"contact"];
    }
    cell.textLabel.text = ((Contacter *)self.contactList.contactArray[indexPath.row]).name;
    cell.detailTextLabel.text = ((Contacter *)self.contactList.contactArray[indexPath.row]).phoneNumber;

    return cell;
}

- (IBAction)backHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    return;
}


- (IBAction)addContact:(id)sender {
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

- (BOOL)tableView:(UITableView *)tableView canPerformAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    return YES;
}

@end
