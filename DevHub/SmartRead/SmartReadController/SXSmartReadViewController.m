//
//  SXSmartReadViewController.m
//  81 - 网易新闻
//
//  Created by steven on 27/10/2016.
//  Copyright © 2016 ShangxianDante. All rights reserved.
//

#import "SXSmartReadViewController.h"
#import "HomeViewController.h"

@interface SXSmartReadViewController ()

@property (nonatomic, strong)HomeViewController *homeViewController;

@end

@implementation SXSmartReadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.homeViewController = [[HomeViewController alloc] init];
    [self.homeViewController.view setFrame:self.view.frame];
    [self addChildViewController:self.homeViewController];
    [self.view addSubview:self.homeViewController.view];
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
