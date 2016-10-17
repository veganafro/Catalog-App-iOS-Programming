//
//  ObjectInfo.h
//  iOS Programming Homework 2
//
//  Created by Jeremia Muhia on 10/16/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjectInfo : NSObject
{
    NSString * itemName;
    NSString * itemDetails;
    int cost;
    int numOnHand;
}

// instance methods
- (NSString *) getName;
- (NSString *) getDetails;
- (int) getCost;
- (int) getNumOnHand;
- (void) addStock: (int) numberToAdd;
- (void) sellItem;
- (void) printObject;
- (id) initWithParams:(NSString *) name andDetails:(NSString *) details andCost:(int) itemCost andCount:(int) count;

@end
