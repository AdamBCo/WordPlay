//
//  ViewController.m
//  WordPlay
//
//  Created by Adam Cooper on 9/30/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindFromResultsViewController:(UIStoryboardSegue *)segue{
    NSLog(@"We are back at the begining!");
}

@end
