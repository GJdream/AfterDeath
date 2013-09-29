//
//  ContactList.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-30.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "ContactList.h"
#import "Contacter.h"

@implementation ContactList

- (id)init
{
    self = [super init];
    if (self) {
        Contacter *a1 = [[Contacter alloc] initWithName:@"Zhao Zhengzhong" andPhoneNumber:@"178998-3451"];
        Contacter *a2 = [[Contacter alloc] initWithName:@"Zhang Yaping" andPhoneNumber:@"3210-123332"];
        Contacter *a3 = [[Contacter alloc] initWithName:@"Mei Yang" andPhoneNumber:@"2322-123222"];
        _contactArray = [NSArray arrayWithObjects:a1, a2, a3, nil];
    }
    return self;
}

@end
