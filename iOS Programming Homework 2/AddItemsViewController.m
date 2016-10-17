//
//  AddItemsViewController.m
//  iOS Programming Homework 2
//
//  Created by Jeremia Muhia on 10/15/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import "AddItemsViewController.h"
#import "RootViewController.h"
#import "ObjectInfo.h"
#import "Model.h"

@interface AddItemsViewController ()

@end

@implementation AddItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation
*/

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    RootViewController * rootVC = [segue destinationViewController];
    
    NSLog(@"...starting segue %@ in AddItemsViewController", segue.identifier);
    
    rootVC.model = self.model;
    
}

- (IBAction)addButtonPressed:(id)sender {
    if (![self.productName.text isEqualToString:@""] && ![self.productName.text isEqualToString:@""]) {
        ObjectInfo * newObject = [[ObjectInfo alloc] initWithParams:self.productName.text andDetails:self.productDetails.text andCost:[self.productCost.text intValue] andCount:[self.productCount.text intValue]];
    
        [self.model.objectArray addObject:newObject];
        
    }
}

- (IBAction)cancelButtonPressed:(id)sender {
}

@end
