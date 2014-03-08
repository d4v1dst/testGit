//
//  ParallaxViewController.h
//  testParallax
//
//  Created by Digono Apps on 3/6/14.
//  Copyright (c) 2014 Digono Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParallaxViewController : UIViewController<UIScrollViewDelegate> {
    float was;
    float xFI;
}


@property (retain, nonatomic) IBOutlet UIWebView *webView;
@property (retain, nonatomic) IBOutlet UIImageView *fImage;
@property (retain, nonatomic) IBOutlet UIImageView *sImage;
@property (retain, nonatomic) IBOutlet UIScrollView *scroll;
@property (retain, nonatomic) IBOutlet UIImageView *backgroundImage;
@end
