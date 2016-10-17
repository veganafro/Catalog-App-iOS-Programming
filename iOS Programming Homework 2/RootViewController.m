//
//  ViewController.m
//  iOS Programming Homework 2
//
//  Created by Jeremia Muhia on 10/9/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import "RootViewController.h"
#import "AddItemsViewController.h"
#import "SeeItemsViewController.h"
#import "ObjectInfo.h"
#import "Model.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"addItemsSegue"]) {
        //AddItemsViewController * addItemsVC = segue.destinationViewController;
        NSLog(@"addItemsSegue in RootViewController");
    }
    else if ([segue.identifier isEqualToString:@"viewItemsSegue"]) {
        SeeItemsViewController * viewItemsVC = segue.destinationViewController;
        
        if (viewItemsVC.arrayPosition == 0) {
            viewItemsVC.backwardButton.enabled = NO;
        }
        else if (viewItemsVC.arrayPosition == viewItemsVC.model.objectArray.count - 1) {
            viewItemsVC.forwardButton.enabled = NO;
        }
        NSLog(@"viewItemsSegue in RootViewController");
    }
    
}

- (IBAction)addItemsAction:(UIStoryboardSegue *) segue {
    NSLog(@"addItems in RootViewController");
}

- (IBAction)cancelAddItemsAction:(UIStoryboardSegue *) segue {
    NSLog(@"cancelAddItems in RootViewController");
}

- (IBAction)viewItemsAction:(UIStoryboardSegue *) segue {
    NSLog(@"viewItems in RootViewController");
}

- (IBAction)doneViewItemsAction:(UIStoryboardSegue *) segue {
    NSLog(@"doneViewItems in RootViewController");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
