//
//  AnotherNameViewController.m
//  WordPlay
//
//  Created by Adam Cooper on 9/30/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "AnotherNameViewController.h"
#import "AnotherAdjectiveViewController.h"

@interface AnotherNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *anotherNameTextField;

@end

@implementation AnotherNameViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Another Name";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    AnotherAdjectiveViewController *resultsViewController =segue.destinationViewController;
    resultsViewController.name = self.name;
    resultsViewController.adjective = self.adjective;
    resultsViewController.nameTwo = self.anotherNameTextField.text;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([self.anotherNameTextField.text isEqualToString:@""]) {
        return NO;
    }
    return YES;
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
