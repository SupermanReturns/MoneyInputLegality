//
//  MoneyTextField.m
//  MoneyInputLegality
//
//  Created by Superman on 2018/7/10.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "MoneyTextField.h"

@interface MoneyTextField()
@property (nonatomic, strong) MoneyTextFieldLimit *limit;

@end

@implementation MoneyTextField

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.delegate = self.limit;
        [self addTarget:self.limit action:@selector(valueChange:) forControlEvents:UIControlEventEditingChanged];
    }
    return self;
}
// 禁止 粘贴、剪切、选择、选择全部
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    if (action == @selector(paste:)){
        return NO;
    }
    if (action == @selector(cut:)) {
        return NO;
    }
    if (action == @selector(copy:)) {
        return NO;
    }
    if (action == @selector(selectAll:)) {
        return NO;
    }
    if (action == @selector(select:)) {
        return NO;
    }
    return [super canPerformAction:action withSender:sender];
}
- (MoneyTextFieldLimit *)limit{
    if (!_limit) {
        _limit = [[MoneyTextFieldLimit alloc] init];
    }
    return _limit;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
