//
//  Basket.h
//  FruitBasketIterator
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "Fruit.h"

@interface Basket : NSObject

@property NSMutableArray * fruitList;

-(void) putFruit : (Fruit *) fruit;

-(Iterator *) getIterator;

@end
