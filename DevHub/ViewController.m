//
//  ViewController.m
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import "DEVTargetViewController.h"
#import "OCRViewController.h"
#import "DEVButton.h"

@interface ViewController ()

@end

#define BUTTON_WIDTH 240
#define BUTTON_HEIGHT 50

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set interHeight between these buttons
    CGFloat innerHeight = (self.view.frame.size.height - self.navigationController.navigationBar.frame.size.height - 4 * BUTTON_HEIGHT) / 7;
    [self.imageHeightConstraint setConstant:innerHeight];
    [self.ocrHeightConstraint setConstant:innerHeight];
    [self.sampleHeightConstraint setConstant:innerHeight];
    [self.targetHeightConstraint setConstant:innerHeight];
    
    // Set button size
    [self.imageCompareButtonSizeWidthConstraint setConstant:BUTTON_WIDTH];
    [self.imageCompareButtonSizeHeightConstarint setConstant:BUTTON_HEIGHT];
    [self.ocrButtonWidthConstraint setConstant:BUTTON_WIDTH];
    [self.ocrButtonHeightConstraint setConstant:BUTTON_HEIGHT];
    [self.sampleSearchButtonWidthConstraint setConstant:BUTTON_WIDTH];
    [self.sampleSearchButtonHeightConstraint setConstant:BUTTON_HEIGHT];
    [self.targetTrackButtonWidthConstraint setConstant:BUTTON_WIDTH];
    [self.targetTrackButtonHeightConstraint setConstant:BUTTON_HEIGHT];
    
    // Set copyright label
    [self.authorLabel setText:@"@智创云图"];
    [self.authorLabel setTextColor:[UIColor whiteColor]];
    [self.authorLabel setFont:[UIFont systemFontOfSize:15]];
    
    
    // Set background
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"banner.jpg"] drawInRect:self.view.bounds];
    UIImage *bannerImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:bannerImage]];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    UIImage *logoImage = [UIImage imageNamed:@"logo"];
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:logoImage];
    logoImageView.frame = CGRectMake(75, 0, 50, 28);
    [logoImageView setContentMode:UIViewContentModeScaleAspectFit];
    [self.navigationItem setTitleView:logoImageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)imageCompareButtonPressed:(id)sender {
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    homeViewController.type = @"compare";
    [self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"开发集市" style:UIBarButtonItemStylePlain target:nil action:nil]];
    [self.navigationController pushViewController:homeViewController animated:YES];
}

- (IBAction)ocrButtonPressed:(id)sender {
    OCRViewController *homeViewController = [[OCRViewController alloc] init];
    homeViewController.type = @"ocr";
    [self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"开发集市" style:UIBarButtonItemStylePlain target:nil action:nil]];
    [self.navigationController pushViewController:homeViewController animated:YES];
}

- (IBAction)sampleSearchButtonPrssed:(id)sender {
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    homeViewController.type = @"pattern";
    [self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"开发集市" style:UIBarButtonItemStylePlain target:nil action:nil]];
    [self.navigationController pushViewController:homeViewController animated:YES];
}

- (IBAction)targetTrackButtonPressed:(id)sender {
    DEVTargetViewController *homeViewController = [[DEVTargetViewController alloc] init];
    [self.navigationItem setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"开发集市" style:UIBarButtonItemStylePlain target:nil action:nil]];
    [self.navigationController pushViewController:homeViewController animated:YES];
}
@end
