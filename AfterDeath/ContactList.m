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
        Contacter *a3 = [[Contacter alloc] initWithName:@"Mei Yang" andPhoneNumber:@"1232-123222"];
        Contacter *a9 = [[Contacter alloc] initWithName:@"Cao Mingzhe" andPhoneNumber:@"122-123122"];
        Contacter *a4 = [[Contacter alloc] initWithName:@"Cheng Yuanyuan" andPhoneNumber:@"4322-11222"];
        Contacter *a5 = [[Contacter alloc] initWithName:@"Piiggy Xian" andPhoneNumber:@"2322-123222"];
        Contacter *a6 = [[Contacter alloc] initWithName:@"Ren Xian" andPhoneNumber:@"23312232"];
        Contacter *a7 = [[Contacter alloc] initWithName:@"Selina Alpah" andPhoneNumber:@"231186222"];
        Contacter *a8 = [[Contacter alloc] initWithName:@"Marv Josh" andPhoneNumber:@"2367822-123222"];
        a4.note = @"i love you";

        _contactArray = [NSArray arrayWithObjects:a1, a2, a3, a4, a5, a6, a7, a8, a9, nil];
    }
    return self;
}

- (NSString *)contacterNameAtPosition:(NSInteger)i {
    return ((Contacter *)self.contactArray[i]).name;
}

- (Contacter *)contacterAtPosition:(NSInteger)i {
    return (Contacter *)self.contactArray[i];
}

@end
