//
//  SeeItemsViewController.m
//  iOS Programming Homework 2
//
//  Created by Jeremia Muhia on 10/16/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import "SeeItemsViewController.h"
#import "RootViewController.h"
#import "ObjectInfo.h"
#import "Model.h"

@interface SeeItemsViewController ()

@end

@implementation SeeItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated {
    self.arrayPosition = 0;
    
    NSLog(@"array index is at position %d", self.arrayPosition);
    
    self.backwardButton.enabled = NO;
    
    self.productName.text = [[self.model.objectArray objectAtIndex:self.arrayPosition] getName];
    self.productDetails.text = [[self.model.objectArray objectAtIndex:self.arrayPosition] getDetails];
    self.productCost.text = [NSString stringWithFormat: @"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getCost]];
    self.productCount.text = [NSString stringWithFormat: @"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getNumOnHand]];
    self.imageView.image = [[self.model.objectArray objectAtIndex:self.arrayPosition] getImage];
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
    
    RootViewController * rootVC = segue.destinationViewController;
    
    NSLog(@"...starting segue %@ in SeeItemsViewController", segue.identifier);
    
    rootVC.model = self.model;
    
}

- (IBAction)doneButtonPressed:(id)sender {
}

- (IBAction)backwardButtonPressed:(id)sender {
    if (self.arrayPosition > 0 && self.arrayPosition < self.model.objectArray.count) {
        self.arrayPosition -= 1;
        
        self.forwardButton.enabled = YES;
        
        self.productName.text = [[self.model.objectArray objectAtIndex:self.arrayPosition] getName];
        self.productDetails.text = [[self.model.objectArray objectAtIndex:self.arrayPosition] getDetails];
        self.productCost.text = [NSString stringWithFormat: @"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getCost]];
        self.productCount.text = [NSString stringWithFormat: @"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getNumOnHand]];
        self.imageView.image = [[self.model.objectArray objectAtIndex:self.arrayPosition] getImage];
        
        if (self.arrayPosition == 0) {
            self.backwardButton.enabled = NO;
        }
    }
    
}

- (IBAction)forwardButtonPressed:(id)sender {
    if (self.arrayPosition >= 0 && self.arrayPosition < self.model.objectArray.count - 1) {
        self.arrayPosition += 1;
        
        self.backwardButton.enabled = YES;
        
        self.productName.text = [[self.model.objectArray objectAtIndex:self.arrayPosition] getName];
        self.productDetails.text = [[self.model.objectArray objectAtIndex:self.arrayPosition] getDetails];
        self.productCost.text = [NSString stringWithFormat: @"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getCost]];
        self.productCount.text = [NSString stringWithFormat: @"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getNumOnHand]];
        self.imageView.image = [[self.model.objectArray objectAtIndex:self.arrayPosition] getImage];
        
        if (self.arrayPosition == self.model.objectArray.count - 1) {
            self.forwardButton.enabled = NO;
        }
    }

}

- (IBAction)decrementButtonPressed:(id)sender {
    if ([self.productCount.text intValue] > 0) {
        [[self.model.objectArray objectAtIndex:self.arrayPosition] sellItem];
        
        self.productCount.text = [NSString stringWithFormat:@"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getNumOnHand]];
    }
    
}
- (IBAction)incrementButtonPressed:(id)sender {
    [[self.model.objectArray objectAtIndex:self.arrayPosition] addStock:1];
    
    self.productCount.text = [NSString stringWithFormat:@"%d", [[self.model.objectArray objectAtIndex:self.arrayPosition] getNumOnHand]];
    
}


@end
