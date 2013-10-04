//
//  ContactList.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-9-30.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contacter;

@interface ContactList : NSObject

@property (strong, nonatomic) NSArray *contactArray;

- (NSString *)contacterNameAtPosition:(NSInteger)i;

- (Contacter *)contacterAtPosition:(NSInteger)i;

@end
