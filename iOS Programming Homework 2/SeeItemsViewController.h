//
//  SeeItemsViewController.h
//  iOS Programming Homework 2
//
//  Created by Jeremia Muhia on 10/16/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Model;

@interface SeeItemsViewController : UIViewController

@property (strong, nonatomic) Model * model;
@property int arrayPosition;

@property (weak, nonatomic) IBOutlet UITextField *productName;
@property (weak, nonatomic) IBOutlet UITextField *productDetails;
@property (weak, nonatomic) IBOutlet UITextField *productCost;
@property (weak, nonatomic) IBOutlet UITextField *productCount;

@property (weak, nonatomic) IBOutlet UIButton *backwardButton;
@property (weak, nonatomic) IBOutlet UIButton *forwardButton;

@end
