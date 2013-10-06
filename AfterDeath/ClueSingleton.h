//
//  ClueSingleton.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-3.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <Foundation/Foundation.h>
#define INSTANCEVARIABLE_KEY @"clueArray"

@interface ClueSingleton : NSObject <NSCoding>

@property (nonatomic, strong) NSMutableArray *clueArray;

+ (id)sharedClue;

- (void)saveClue;

- (void)addAndSaveClue:(id)clue;
@end
