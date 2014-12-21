//
//  ViewController.m
//  HelloWorldApp
//
//  Created by houchenxi  on 14-12-21.
//  Copyright (c) 2014年 haotwo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)m_aButtonPressed:(UIButton *)sender {
    
    NSString* title = [sender titleForState:(UIControlStateNormal)];
    
    NSString* sDisplay = [NSString stringWithFormat:@"Button %@ is pressed.", title];
    
    _m_oLabelDisplay.text = sDisplay;
}
@end
