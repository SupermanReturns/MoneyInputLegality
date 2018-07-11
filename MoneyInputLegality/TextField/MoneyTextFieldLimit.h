//
//  MoneyTextFieldLimit.h
//  MoneyInputLegality
//
//  Created by Superman on 2018/7/10.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MoneyTextFieldLimitDelegate;


@interface MoneyTextFieldLimit : NSObject

@property (nonatomic, assign) id <MoneyTextFieldLimitDelegate> delegate;
@property (nonatomic, strong) NSString *max; // 默认99999.99

- (void)valueChange:(id)sender;


@end
