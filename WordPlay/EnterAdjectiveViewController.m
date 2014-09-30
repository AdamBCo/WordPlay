//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Adam Cooper on 9/30/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"


@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Adjective";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//PREPARE FOR SEGUE

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultsViewController *resultsViewController =segue.destinationViewController;
    resultsViewController.adjective = self.adjectiveTextField.text;
    resultsViewController.name = self.name;



    
}

//EXIT

-(void)unwindFromEnterNameViewController:(UIStoryboardSegue *)segue{
    NSLog(@"We just got to the Adjective Screen!!");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
