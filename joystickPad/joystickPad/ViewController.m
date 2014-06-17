//
//  ViewController.m
//  joystickPad
//
//  Created by 大畅 on 14/6/17.
//  Copyright (c) 2014年 Dachang. All rights reserved.
//

#import "ViewController.h"
#import <CoreMotion/CMMotionManager.h>

@interface ViewController ()
{
    UIImageView *m_indicatorImg;
}
@end

@implementation ViewController

@synthesize accelerometer;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initUI];
    self.accelerometer = [UIAccelerometer sharedAccelerometer];
    self.accelerometer.updateInterval = .015;
    self.accelerometer.delegate = self;
}

- (void)initUI
{
    m_indicatorImg = [[UIImageView alloc] initWithFrame:CGRectMake(512 - 50, 384 - 50, 100, 100)];
    m_indicatorImg.image = [UIImage imageNamed:@"indicator"];
    [self.view addSubview:m_indicatorImg];
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{;
    m_indicatorImg.frame = CGRectMake(512 - 50 + acceleration.y * 500, 384 - 50, 100, 100);
    NSLog(@"%f",m_indicatorImg.frame.origin.x);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


@end
