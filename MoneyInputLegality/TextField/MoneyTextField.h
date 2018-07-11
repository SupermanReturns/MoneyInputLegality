//
//  MoneyTextField.h
//  MoneyInputLegality
//
//  Created by Superman on 2018/7/10.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoneyTextFieldLimit.h"

@interface MoneyTextField : UITextField

- (MoneyTextFieldLimit *)limit;

@end
