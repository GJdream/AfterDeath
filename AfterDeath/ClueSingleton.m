//
//  ClueSingleton.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-3.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "ClueSingleton.h"

@implementation ClueSingleton

+ (id)sharedClue {
    static ClueSingleton *sharedClue = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClue = [[self alloc] init];
    });
    return sharedClue;
}

- (id)init {
    if (self = [super init]) {
        _clueArray = [NSMutableArray new];
    }
    return self;
}

@end
