//
//  ClueSingleton.h
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-3.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClueSingleton : NSObject

@property (nonatomic, strong) NSMutableArray *clueArray;

+ (id)sharedClue;

@end
