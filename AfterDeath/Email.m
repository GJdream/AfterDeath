//
//  Email.m
//  AfterDeath
//
//  Created by Snowmanzzz on 13-10-2.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import "Email.h"

@implementation Email

- (id)initWithSenderName:(NSString *)sender titleString:(NSString *)title mainBody:(NSString *)mainBody recieverName:(NSString *)recieverName
{
    self = [super init];
    if (self) {
        _senderName = sender;
        _titleString = title;
        _mainBody = mainBody;
        _recieverName = recieverName;
    }
    return self;
}

@end
