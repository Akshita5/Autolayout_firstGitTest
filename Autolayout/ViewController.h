//
//  ViewController.h
//  Autolayout
//
//  Created by Akshita Aggarwal on 06/02/15.
//  Copyright (c) 2015 Akshita Aggarwal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel * firstLabel;
    IBOutlet UILabel * secondLabel;
    IBOutlet UILabel * thirdLabel;

}

- (float)getSizeOfString:(NSString*)string;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightOfFirstLabelConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightOfSecondLabelConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightOfThirdLabelConstraint;

@end
