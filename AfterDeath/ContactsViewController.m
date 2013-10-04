//
//  ContactsViewController.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-29.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "ContactsViewController.h"
#import "Contacter.h"
#import "AppDelegate.h"
#import "ShowContactViewController.h"
#import <AddressBookUI/AddressBookUI.h>

@interface ContactsViewController () <ABNewPersonViewControllerDelegate>


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
    self.title = @"Contacts";
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
    ABNewPersonViewController *picker = [[ABNewPersonViewController alloc] init];
	picker.newPersonViewDelegate = self;
    [self.navigationController pushViewController:picker animated:YES];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

- (BOOL)tableView:(UITableView *)tableView canPerformAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ShowContactViewController *scv = [[ShowContactViewController alloc] initWithNibName:@"ShowContactViewController" bundle:nil];
    scv.contacter = [self.contactList contacterAtPosition:indexPath.row];
    [self.navigationController pushViewController:scv animated:YES];
}

#pragma mark ABNewPersonViewControllerDelegate methods
// Dismisses the new-person view controller.
- (void)newPersonViewController:(ABNewPersonViewController *)newPersonViewController didCompleteWithNewPerson:(ABRecordRef)person
{
    if (person) {
        CFErrorRef error=NULL;
        ABRecordRef parentGroup = ABAddressBookGetGroupWithRecordID(newPersonViewController.addressBook, 0);
        //set selected group id
        ABGroupAddMember(parentGroup, person,&error);
        ABAddressBookSave(newPersonViewController.addressBook, &error);
        ABRecordID rcId = ABRecordGetRecordID(person);
        ABAddressBookSave (newPersonViewController.addressBook, &error);
        
        [self.navigationController popViewControllerAnimated:YES];

    }
	[self.navigationController popViewControllerAnimated:YES];
}


@end
