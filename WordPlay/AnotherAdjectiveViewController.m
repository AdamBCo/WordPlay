//
//  AnotherAdjectiveViewController.m
//  WordPlay
//
//  Created by Adam Cooper on 9/30/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "AnotherAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface AnotherAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *anotherAdjectiveTextField;

@end

@implementation AnotherAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Another Adjective";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultsViewController *resultsViewController =segue.destinationViewController;
    resultsViewController.name = self.name;
    resultsViewController.adjective = self.adjective;
    resultsViewController.nameTwo = self.nameTwo;
    resultsViewController.adjectiveTwo = self.anotherAdjectiveTextField.text;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.anotherAdjectiveTextField.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
}

//EXIT

-(void)unwindFromEnterAnotherNameViewController:(UIStoryboardSegue *)segue{
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
