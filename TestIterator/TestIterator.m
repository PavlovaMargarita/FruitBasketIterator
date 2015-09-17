//
//  TestIterator.m
//  TestIterator
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Basket.h"
#import "Iterator.h"
#import "Apple.h"

@interface TestIterator : XCTestCase

@end

@implementation TestIterator

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testZeroFruits {    
    Basket * basket = [[Basket alloc] init];
    Iterator * iterator = [basket getIterator];
    BOOL hasNext = [iterator hasNext];
    XCTAssertFalse(hasNext);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
