//
//  OCRTextViewController.h
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OCRTextViewController : UIViewController

@property (nonatomic, strong)NSString *textContent;
@property (weak, nonatomic) IBOutlet UILabel *ocrTextLabel;
@end
