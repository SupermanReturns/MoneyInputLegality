//
//  ViewController.m
//  MoneyInputLegality
//
//  Created by Superman on 2018/7/10.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "ViewController.h"
#import "MoneyTextField.h"

@interface ViewController ()<MoneyTextFieldLimitDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect frame = CGRectMake(30,100,[UIScreen mainScreen].bounds.size.width - 60,44);
    MoneyTextField *tf = [[MoneyTextField alloc] initWithFrame:frame];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.placeholder = @"请输入金额";
    tf.keyboardType = UIKeyboardTypeDecimalPad;
    tf.limit.delegate = self;
    tf.limit.max = @"99999.99";
    [self.view addSubview:tf];
}
#pragma mark - MoneyTextFieldLimitDelegate
- (void)valueChange:(id)sender{
    
    if ([sender isKindOfClass:[MoneyTextField class]]) {
        
        MoneyTextField *tf = (MoneyTextField *)sender;
        NSLog(@"MoneyTextField ChangedValue: %@",tf.text);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
