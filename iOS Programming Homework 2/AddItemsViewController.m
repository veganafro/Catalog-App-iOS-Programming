//
//  AddItemsViewController.m
//  iOS Programming Homework 2
//
//  Created by Jeremia Muhia on 10/15/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import "AddItemsViewController.h"
#import "RootViewController.h"

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
    
    NSLog(@"...starting segue %@", segue.identifier);
    
    if ([segue.identifier isEqualToString:@"addItemsAction"]) {
    
    }
}


@end
