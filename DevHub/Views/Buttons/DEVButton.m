//
//  DEVButton.m
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "DEVButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation DEVButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self.layer setBorderColor:[UIColor whiteColor].CGColor];
        [self.layer setBorderWidth:2.0];
        [self.layer setCornerRadius:6.0];

        [self setTintColor:[UIColor whiteColor]];
        [self.titleLabel setFont:[UIFont systemFontOfSize:20.0]];
        [self layoutIfNeeded];
    }
    
    return self;
}

@end
