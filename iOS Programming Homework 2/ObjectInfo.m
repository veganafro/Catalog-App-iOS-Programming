//
//  ObjectInfo.m
//  iOS Programming Homework 1
//
//  Created by Jeremia Muhia on 9/25/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ObjectInfo.h"

@implementation ObjectInfo

- (void) printObject {
    NSLog(@"This is %@. It costs %d. There are %d available", itemDetails, cost, numOnHand);

} // end printObject

- (void) addStock: (int) numberToAdd {
    numOnHand += numberToAdd;

} // end addStock

- (void) sellItem {
    if (numOnHand > 0) {
        numOnHand -= 1;
        [self printObject];
        return;
    }
    NSLog(@"You cannot sell things you do not have. Please add stock before selling an item");

} // end sellItem

- (int) getCost {
    return cost;

} // end getCost

- (int) getNumOnHand {
    return numOnHand;

} // end getNumOnHand

- (id) initWithParams:(NSString *)details andCost:(int) itemCost {
    if (self = [super init]) {
        itemDetails = details;
        cost = itemCost;
        numOnHand = 0;
    }
    
    return self;
}

@end
