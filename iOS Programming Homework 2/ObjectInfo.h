//
//  ObjectInfo.h
//  iOS Programming Homework 1
//
//  Created by Jeremia Muhia on 9/25/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjectInfo : NSObject
{
    NSString * itemDetails;
    int cost;
    int numOnHand;
}

// instance methods
- (int) getCost;
- (int) getNumOnHand;
- (void) addStock: (int) numberToAdd;
- (void) sellItem;
- (void) printObject;
- (id) initWithParams:(NSString *)details andCost:(int) itemCost;

@end
