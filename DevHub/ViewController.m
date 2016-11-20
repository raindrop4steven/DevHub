//
//  ViewController.m
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set interHeight between these buttons
    CGFloat innerHeight = (self.view.frame.size.height - self.navigationController.navigationBar.frame.size.height) / 7;
    [self.imageHeightConstraint setConstant:innerHeight];
    [self.ocrHeightConstraint setConstant:innerHeight];
    [self.sampleHeightConstraint setConstant:innerHeight];
    [self.targetHeightConstraint setConstant:innerHeight];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)imageCompareButtonPressed:(id)sender {
}

- (IBAction)ocrButtonPressed:(id)sender {
}

- (IBAction)sampleSearchButtonPrssed:(id)sender {
}

- (IBAction)targetTrackButtonPressed:(id)sender {
}
@end
