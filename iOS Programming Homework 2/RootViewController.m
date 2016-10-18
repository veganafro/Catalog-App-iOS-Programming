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
        AddItemsViewController * addItemsVC = segue.destinationViewController;
        
        addItemsVC.model = self.model;
        
        NSLog(@"addItemsSegue in RootViewController");
    }
    else if ([segue.identifier isEqualToString:@"viewItemsSegue"]) {
        SeeItemsViewController * viewItemsVC = segue.destinationViewController;
        
        viewItemsVC.model = self.model;
        
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
    
    self.model = [[Model alloc] init];
    self.model.objectArray = [[NSMutableArray alloc] init];
    
    ObjectInfo * iPhone = [[ObjectInfo alloc] initWithParams:@"iPhone 7" andDetails:@"A phone from Apple" andCost:666 andCount:1];
    [iPhone setImage:[UIImage imageNamed:@"iPhone Logo"]];
    
    [self.model.objectArray addObject:iPhone];
    
    ObjectInfo * apple = [[ObjectInfo alloc] initWithParams:@"Apple" andDetails:@"An Apple that sells phones" andCost:999 andCount:1];
    [apple setImage:[UIImage imageNamed:@"Apple Logo"]];
    
    [self.model.objectArray addObject:apple];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
