//
//  main.m
//  FruitBasketIterator
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"
#import "Basket.h"
#import "Orange.h"
#import "Iterator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Apple * apple = [[Apple alloc] init];
        apple.name = @"red apple";
        Orange * orange = [[Orange alloc] init];
        orange.name = @"tasty orange";
        //[orange getInfo];
        Apple * apple2 = [[Apple alloc] init];
        apple2.name = @"green apple";
        Basket * basket = [[Basket alloc] init];
        [basket putFruit:apple];
        [basket putFruit:orange];
        [basket putFruit:apple2];
        
        Iterator * iterator = [basket getIterator];
        
        while([iterator hasNext]){
            Fruit * fruit = [iterator getNext];
            [fruit getInfo];
        }
        
    }
    return 0;
}
