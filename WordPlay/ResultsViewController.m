//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Adam Cooper on 9/30/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;
@property(nonatomic,copy) NSAttributedString *attributedText;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Result";
    
    NSString *personOneName = self.name;
    NSString *personOneAdjective = self.adjective;
    NSString *personTwoName = self.nameTwo;
    NSString *personTwoAdjective = self.adjectiveTwo;
    
    NSInteger nameRange = [personOneName length];
    NSInteger adjectiveRange = [personOneAdjective length];
    NSInteger nameTwoRange = [personTwoName length];
    NSInteger adjectiveTwoRange = [personTwoAdjective length];
    
    NSString *finalText = [NSString stringWithFormat:@"%@ and %@ had a fun day playing with the %@, %@ giants!!", personOneName, personTwoName, personOneAdjective, personTwoAdjective];
    NSLog(@"%@", finalText);
    NSMutableAttributedString * string = [[NSMutableAttributedString alloc] initWithString:finalText];
    
    
    NSRange rangeOne = [finalText rangeOfString:personOneName];
    if (rangeOne.location == NSNotFound) {
        NSLog(@"string was not found");
    } else {
        NSLog(@"position %lu", (unsigned long)rangeOne.location);
    }
    
    NSRange rangeTwo = [finalText rangeOfString:personOneAdjective];
    if (rangeTwo.location == NSNotFound) {
        NSLog(@"string was not found");
    } else {
        NSLog(@"position %lu", (unsigned long)rangeTwo.location);
    }
    
    NSRange rangeThree = [finalText rangeOfString:personTwoName];
    if (rangeOne.location == NSNotFound) {
        NSLog(@"string was not found");
    } else {
        NSLog(@"position %lu", (unsigned long)rangeThree.location);
    }
    
    NSRange rangeFour = [finalText rangeOfString:personTwoAdjective];
    if (rangeTwo.location == NSNotFound) {
        NSLog(@"string was not found");
    } else {
        NSLog(@"position %lu", (unsigned long)rangeFour.location);
    }
    
    NSUInteger finalRangeOne = rangeOne.location;
    NSUInteger finalRangeTwo = rangeTwo.location;
    NSUInteger finalRangeThree = rangeThree.location;
    NSUInteger finalRangeFour = rangeFour.location;
    
    UIFont *font = [UIFont fontWithName:@"Helvetica-Bold" size:13.0f];
    [string addAttribute:NSFontAttributeName value:font range:NSMakeRange(finalRangeOne, nameRange)];
    [string addAttribute:NSFontAttributeName value:font range:NSMakeRange(finalRangeTwo, adjectiveRange)];
    [string addAttribute:NSFontAttributeName value:font range:NSMakeRange(finalRangeThree, nameTwoRange)];
    [string addAttribute:NSFontAttributeName value:font range:NSMakeRange(finalRangeFour, adjectiveTwoRange)];
    
    self.resultsTextView.attributedText = string;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)unwindFromEnterAdjectiveViewController:(UIStoryboardSegue *)segue{
    NSLog(@"We just got to the Results Screen!!");
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
