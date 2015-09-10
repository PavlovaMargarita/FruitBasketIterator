//
//  Iterator.h
//  FruitBasketIterator
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface Iterator : NSObject

@property NSMutableArray * fruitList;
@property BOOL isFirst;
@property NSUInteger  lastElementIndex;
@property NSUInteger  index;
@property NSUInteger  totalIterations;

-(id) initWithParams : (NSMutableArray *) fruitListParam;

-(BOOL) hasNext;

-(Fruit *) getNext;


@end
