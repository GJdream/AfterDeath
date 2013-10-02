//
//  Contacs.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-30.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "ContactList.h"


@interface ContactsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ContactList *contactList;

- (IBAction)addContact:(id)sender;

@end
