//
//  Iterator.m
//  FruitBasketIterator
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Iterator.h"

@implementation Iterator

-(id) initWithParams : (NSMutableArray *) fruitListParam{
    self = [super init];
    if(self){
        _fruitList = fruitListParam;
        _index = 0;
        _isFirst = YES;
        _lastElementIndex = [_fruitList count] - 1;
        _totalIterations = 0;
    }
    return  self;
}

-(BOOL) hasNext{
    if(_lastElementIndex >= _totalIterations){
        return YES;
    } else {
        return NO;
    }
}

-(Fruit *) getNext{
    Fruit * fruit = [_fruitList objectAtIndex:_index];
    
    _index = _lastElementIndex - _index;
    
    if(_isFirst){
        _isFirst = NO;
    } else {
        _index++;
        _isFirst = YES;
    }
    
    _totalIterations++;
    return fruit;
}


@end
