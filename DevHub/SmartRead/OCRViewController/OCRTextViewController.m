//
//  OCRTextViewController.m
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "OCRTextViewController.h"

@interface OCRTextViewController ()

@end

@implementation OCRTextViewController
@synthesize textContent;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.ocrTextLabel setText:self.textContent];
    [self.navigationItem setTitle:@"详情"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
