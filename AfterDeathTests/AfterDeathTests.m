//
//  AfterDeathTests.m
//  AfterDeathTests
//
//  Created by Snowmanzzz on 13-9-29.
//  Copyright (c) 2013年 zzz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ClueSingleton.h"
#import "ClueConstants.h"

@interface AfterDeathTests : XCTestCase

@end

@implementation AfterDeathTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    XCTAssert([[ClueSingleton sharedClue] clueArray].count > 0, @"wo cao");

    [[ClueSingleton sharedClue] addAndSaveClue:Sound_like_Ch];
    XCTAssert([[ClueSingleton sharedClue] clueArray].count > 0, @"wo cao");
}

@end
