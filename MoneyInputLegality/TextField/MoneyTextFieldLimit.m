//
//  MoneyTextFieldLimit.m
//  MoneyInputLegality
//
//  Created by Superman on 2018/7/10.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "MoneyTextFieldLimit.h"
#import <UIKit/UIKit.h>


@interface MoneyTextFieldLimit()<UITextFieldDelegate>
@property (nonatomic, strong) NSString *tempText;
@property (nonatomic, assign) NSRange tempRange;
@property (nonatomic, strong) NSString *tempString;

@end
@implementation MoneyTextFieldLimit
- (instancetype)init{
    if (self = [super init]) {
        _max = @"99999.99";
    }
    return self;
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    _tempText = textField.text;
    _tempRange = range;
    _tempString = string;
    
    
}

#pragma mark TextFieleActions

- (void)valueChange:(id)sender {
    
}

@end


























