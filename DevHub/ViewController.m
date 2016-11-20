//
//  ViewController.m
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "ViewController.h"
#import "SXSmartReadViewController.h"

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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    UIImage *logoImage = [UIImage imageNamed:@"logo"];
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:logoImage];
    logoImageView.frame = CGRectMake(75, 0, 150, 44);
    [logoImageView setContentMode:UIViewContentModeScaleAspectFit];
    [self.navigationItem setTitleView:logoImageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)imageCompareButtonPressed:(id)sender {
    SXSmartReadViewController *smartReadViewController = [[SXSmartReadViewController alloc] init];
    [self.navigationController pushViewController:smartReadViewController animated:YES];
}

- (IBAction)ocrButtonPressed:(id)sender {
}

- (IBAction)sampleSearchButtonPrssed:(id)sender {
}

- (IBAction)targetTrackButtonPressed:(id)sender {
}
@end
