//
//  ShowContactViewController.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-3.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "ShowContactViewController.h"
#import "Contacter.h"
#import "ClueConstants.h"
#import "ClueSingleton.h"

@interface ShowContactViewController ()

@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UITextView *noteTextView;

@end

@implementation ShowContactViewController

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
    self.nameLabel.text = self.contacter.name;
    self.phoneNumber.text = self.contacter.phoneNumber;
    self.noteTextView.text = self.contacter.note;
}

- (void)viewWillAppear:(BOOL)animated {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)thriTextView:(id)sender {
    if ([self.contacter.name  isEqual: @"Cheng Yuanyuan"]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Clue!" message:Sound_like_Ch delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        alert.delegate = self;
       
//        [[[ClueSingleton sharedClue] clueArray] addound_like_Ch];
        [((ClueSingleton *)[ClueSingleton sharedClue]) addAndSaveClue:Sound_like_Ch]; //addObject:Sound_like_Ch];
        [alert show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {


}

@end
