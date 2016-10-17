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

@interface SeeItemsViewController ()

@end

@implementation SeeItemsViewController

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
    
    //RootViewController * rootVC = segue.destinationViewController;
    
    NSLog(@"...starting segue %@ in SeeItemsViewController", segue.identifier);
    
    if ([segue.identifier isEqualToString:@"doneViewItemsAction"]) {
    
    }
    
}
- (IBAction)doneButtonPressed:(id)sender {
}


@end
