//
//  Basket.m
//  FruitBasketIterator
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Basket.h"

@implementation Basket

-(id) init {
    self = [super init];
    if(self){
        _fruitList = [[NSMutableArray alloc] init];
    }
    return  self;
}

-(void) putFruit : (Fruit *) fruit{
    [_fruitList addObject:fruit];
}

-(Iterator *) getIterator{
    return [[Iterator alloc] initWithParams:_fruitList];
}



@end
