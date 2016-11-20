//
//  ViewController.h
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DEVButton;

@interface ViewController : UIViewController

// Button inner height constraints
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ocrHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sampleHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *targetHeightConstraint;

// Button size constraints
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageCompareButtonSizeHeightConstarint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageCompareButtonSizeWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ocrButtonHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ocrButtonWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sampleSearchButtonHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sampleSearchButtonWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *targetTrackButtonHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *targetTrackButtonWidthConstraint;


@property (weak, nonatomic) IBOutlet DEVButton *imageCompareButton;
@property (weak, nonatomic) IBOutlet DEVButton *ocrButton;
@property (weak, nonatomic) IBOutlet DEVButton *sampleSearchButton;
@property (weak, nonatomic) IBOutlet DEVButton *targetTrckButton;

- (IBAction)imageCompareButtonPressed:(id)sender;
- (IBAction)ocrButtonPressed:(id)sender;
- (IBAction)sampleSearchButtonPrssed:(id)sender;
- (IBAction)targetTrackButtonPressed:(id)sender;


@end

