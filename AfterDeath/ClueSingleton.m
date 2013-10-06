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
        NSData *data = [NSData dataWithContentsOfFile:[NSHomeDirectory() stringByAppendingString:@"/Documents/clue"]];
        sharedClue = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        if (sharedClue == nil) {
            sharedClue = [[self alloc] init];
        }
    });
    return sharedClue;
}

- (id)init {
    if (self = [super init]) {
        _clueArray = [NSMutableArray new];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.clueArray forKey:INSTANCEVARIABLE_KEY];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self.clueArray = [aDecoder decodeObjectForKey:INSTANCEVARIABLE_KEY];
    return self;
}

- (void)saveClue {
    NSString *filename = [NSHomeDirectory() stringByAppendingString:@"/Documents/clue"];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self];
    [data writeToFile:filename atomically:YES];
}

- (void)addAndSaveClue:(id)clue {
    [self.clueArray addObject:clue];
    [self saveClue];
}
@end
