//
//  ViewController.m
//  Autolayout
//
//  Created by Akshita Aggarwal on 06/02/15.
//  Copyright (c) 2015 Akshita Aggarwal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize heightOfFirstLabelConstraint,heightOfSecondLabelConstraint,heightOfThirdLabelConstraint;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    secondLabel.text = nil;
    
    float heightOfFirstLabel = [self getSizeOfString:firstLabel.text];
    float heightOfSecondLabel = [self getSizeOfString:secondLabel.text];
    float heightOfThirdLabel = [self getSizeOfString:thirdLabel.text];
    
    self.heightOfFirstLabelConstraint.constant = heightOfFirstLabel;
    self.heightOfSecondLabelConstraint.constant = heightOfSecondLabel;
    self.heightOfThirdLabelConstraint.constant = heightOfThirdLabel;


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (float)getSizeOfString:(NSString*)string
{
CGSize myStringSize = [string sizeWithFont:[UIFont fontWithName:@"Helvetica" size:14]constrainedToSize:CGSizeMake(220,25) lineBreakMode:NSLineBreakByTruncatingTail];
    float expectedHeight = myStringSize.height;
    return expectedHeight;
}

@end
