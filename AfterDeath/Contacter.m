//
//  Contacter.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-29.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "Contacter.h"

@implementation Contacter

- (id)initWithName:(NSString *)name andPhoneNumber:(NSString *)phoneNumber {
    self = [super init];
    if (self) {
        _name = name;
        _phoneNumber = phoneNumber;
    }
    return self;
}


@end
