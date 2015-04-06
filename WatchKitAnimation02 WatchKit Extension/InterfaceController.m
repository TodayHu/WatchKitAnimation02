//
//  InterfaceController.m
//  WatchKitAnimation02 WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/06.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "InterfaceController.h"

// 接続
@interface InterfaceController()

// 画像
@property (weak, nonatomic) IBOutlet WKInterfaceImage *animatedImage;
// Playボタン
@property (weak, nonatomic) IBOutlet WKInterfaceButton *playButton;
// Stopボタン
@property (weak, nonatomic) IBOutlet WKInterfaceButton *stopButton;

@end


@implementation InterfaceController

// 最初に呼び出されるメソッド
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

// ユーザーにUIが表示されたタイミングで呼び出されるメソッド
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

// UIが非表示になったタイミングで呼び出されるメソッド
- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

// アニメーション プレイアクション
- (IBAction)playAnimation {
    // Uses images in WatchKit app bundle.
    [self.animatedImage setImageNamed:@"Bus"];
    [self.animatedImage startAnimating];
    
    // Animate with a specific range, duration, and repeat count.
    // [self.animatedImage startAnimatingWithImagesInRange:NSMakeRange(0, 4) duration:2.0 repeatCount:3];
}

// アニメーション ストップアクション
- (IBAction)stopAnimation {
    [self.animatedImage stopAnimating];
}

@end



