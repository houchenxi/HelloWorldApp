//
//  ViewController.h
//  HelloWorldApp
//
//  Created by houchenxi  on 14-12-21.
//  Copyright (c) 2014年 haotwo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *m_oLabelDisplay;

- (IBAction)m_aButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *m_oButtonLeft;

@property (weak, nonatomic) IBOutlet UIButton *m_oButtonRight;
@end

