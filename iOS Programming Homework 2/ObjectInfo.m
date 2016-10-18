//
//  ObjectInfo.m
//  iOS Programming Homework 2
//
//  Created by Jeremia Muhia on 10/16/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import "ObjectInfo.h"
@import UIKit;

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

- (NSString *) getName {
    return itemName;
}

- (NSString *) getDetails {
    return itemDetails;
}

- (int) getCost {
    return cost;
    
} // end getCost

- (int) getNumOnHand {
    return numOnHand;
    
} // end getNumOnHand

- (id) initWithParams:(NSString *) name andDetails:(NSString *) details andCost:(int) itemCost andCount:(int) count {
    if (self = [super init]) {
        itemName = name;
        itemDetails = details;
        cost = itemCost;
        numOnHand = count;
    }
    
    return self;
}

- (BOOL) setImage:(UIImage *) localImage {
    image = localImage;
    return YES;
}

@end
