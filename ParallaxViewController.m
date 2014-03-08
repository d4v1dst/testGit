//
//  ParallaxViewController.m
//  testParallax
//
//  Created by Digono Apps on 3/6/14.
//  Copyright (c) 2014 Digono Apps. All rights reserved.
//

#import "ParallaxViewController.h"

@interface ParallaxViewController ()

@end

@implementation ParallaxViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad 
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.scroll.delegate = self;

}

-(void)viewWillAppear:(BOOL)animated{
    self.backgroundImage.image = [UIImage imageNamed:@"Dr._Jekyll_and_Mr._Hyde_Text.jpg"];
    self.backgroundImage.frame = CGRectMake(0, 0, 768, 2480);
    self.scroll.contentSize = CGSizeMake(768, 2480);
    was = 0;
    xFI = self.fImage.frame.origin.x;
    
//    [self.webView setAllowsInlineMediaPlayback:YES];
    [self.webView setMediaPlaybackRequiresUserAction:NO];
    
    NSString* embedHTML = [NSString stringWithFormat:@"\
                           <html>\
                           <body style='margin:0px;padding:0px;'>\
                           <script type='text/javascript' src='http://www.youtube.com/iframe_api'></script>\
                           <script type='text/javascript'>\
                           function onYouTubeIframeAPIReady()\
                           {\
                           ytplayer=new YT.Player('playerId',{events:{onReady:onPlayerReady}})\
                           }\
                           function onPlayerReady(a)\
                           { \
                           a.target.playVideo(); \
                           }\
                           </script>\
                           <iframe id='playerId' type='text/html' width='%d' height='%d' src='http://www.youtube.com/embed/%@?enablejsapi=1&rel=0&playsinline=1&autoplay=1&fs=0' frameborder='0'>\
                           </body>\
                           </html>", 520, 306, @"JW5meKfy3fY"];
    [self.webView loadHTMLString:embedHTML baseURL:[[NSBundle mainBundle] resourceURL]];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    CGPoint pointOffet = self.scroll.contentOffset;
    float increment = (pointOffet.y*(768))/1456;
	
	NSLog(@"pointOffet = %@", NSStringFromCGPoint(pointOffet)	);
    NSLog(@"increment = %f", increment);
	
	float newPos=0.0f;
	
    if(was > pointOffet.y){
		newPos=self.fImage.frame.origin.x-increment;
        //        NSLog(@"Arriba");
    } else {
		newPos=self.fImage.frame.origin.x+increment;
        //        NSLog(@"Abajo");
    }
	
	if(newPos>=-240 && newPos<=528){
		self.fImage.frame = CGRectMake(newPos,
									   self.fImage.frame.origin.y ,
									   self.fImage.frame.size.width,
									   self.fImage.frame.size.height);
		NSLog(@"self.fImage.frame = %@", NSStringFromCGRect(self.fImage.frame));
	}
	
	
	
	NSLog(@"");
    
    
    
    
    was = pointOffet.y;
}

- (void)dealloc {
    [_fImage release];
    [_sImage release];
    [super dealloc];
}
@end
