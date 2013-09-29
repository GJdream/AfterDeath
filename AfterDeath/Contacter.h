//
//  Contacter.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-29.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contacter : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *phoneNumber;

- (id)initWithName:(NSString *)name andPhoneNumber:(NSString *)phoneNumber;

@end
