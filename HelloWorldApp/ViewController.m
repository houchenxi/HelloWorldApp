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
    
//    _m_oLabelDisplay.text = sDisplay;
//    return;
    
    // 带样式的文本字符串
    NSMutableAttributedString *styledLabelDisplay =[ [NSMutableAttributedString alloc]
                                                    initWithString:sDisplay];
    
    // 设置到文本上的样式信息
    // 一般意义上它是一个词典，每种样式信息是一种KeyValue对
    // 可以有选择的选择几种进行设置，是一种样式信息的若干维度的组合
    NSDictionary * boldAttribute = @{
                                     NSFontAttributeName /* 文本字体，Dict中的Key，是一个字符串的常量指针 */
                                     : [UIFont boldSystemFontOfSize:_m_oLabelDisplay.font.pointSize]
                                     /* Dict中的Key，具体的字体 */
                                     // 字体给出的终值是一个UIFont*，但是经过了静态方法boldSystemFontOfSize和从
                                     // Label中经过font属性取出的pointSize属性作为参数的获取返回值的过程
                                     };
    
    // 这行代码说的是从类似Button LEFT is pressed.
    // 这种字符串中找到子串LEFT的左右边界下标，程序的后面要针对这个子串进行特殊处理。
    NSRange nameRange = [sDisplay rangeOfString:title];
 
    // 对带样式字符串中的LEFT或者RIGHT子串应用刚才设置的样式
    [styledLabelDisplay setAttributes:boldAttribute
                                      range:nameRange];
    
    // 将Label输出口的样式文本属性设置为我们生成的样式字符串，显示最终的效果
    _m_oLabelDisplay.attributedText = styledLabelDisplay;
    
}
@end
