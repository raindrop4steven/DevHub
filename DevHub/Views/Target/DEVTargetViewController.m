//
//  DEVORCViewController.m
//  DevHub
//
//  Created by steven on 2016/11/20.
//  Copyright © 2016年 steven. All rights reserved.
//

#import "DEVTargetViewController.h"

@interface DEVTargetViewController ()

//视频播放
@property (nonatomic, strong)AVPlayer *video_player;
@property (nonatomic, strong)AVPlayerItem *video_player_Item;
@property (nonatomic, strong)AVPlayerLayer *player_layer;

@end

@implementation DEVTargetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self startPlayVideo:@"Demo"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)startPlayVideo:(NSString *)videoName
{
    //设置静音状态也可播放声音
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback error:nil];
    
//    AVURLAsset *asset = [AVURLAsset assetWithURL:[NSURL URLWithString:videoName]];
    AVURLAsset *asset = [AVURLAsset assetWithURL:[[NSBundle mainBundle] URLForResource:videoName withExtension:@"mp4"]];
    
    self.video_player_Item = [AVPlayerItem playerItemWithAsset:asset];
    self.video_player = [[AVPlayer alloc] initWithPlayerItem:self.video_player_Item];
    
    self.player_layer = [AVPlayerLayer playerLayerWithPlayer:self.video_player];
    [self.player_layer setVideoGravity:AVLayerVideoGravityResizeAspect];
    [self.player_layer setFrame:self.view.frame];
    
    [self.view.layer addSublayer:self.player_layer];
    [self.video_player play];
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
