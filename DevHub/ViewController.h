//
//  ViewController.h
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ocrHeightConstraint;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sampleHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *targetHeightConstraint;

@property (weak, nonatomic) IBOutlet UIButton *imageCompareButton;
@property (weak, nonatomic) IBOutlet UIButton *ocrButton;
@property (weak, nonatomic) IBOutlet UIButton *sampleSearchButton;
@property (weak, nonatomic) IBOutlet UIButton *targetTrckButton;

- (IBAction)imageCompareButtonPressed:(id)sender;
- (IBAction)ocrButtonPressed:(id)sender;
- (IBAction)sampleSearchButtonPrssed:(id)sender;
- (IBAction)targetTrackButtonPressed:(id)sender;


@end

