//
//  ViewController.h
//  joystickPad
//
//  Created by 大畅 on 14/6/17.
//  Copyright (c) 2014年 Dachang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAccelerometerDelegate>
{
    UIAccelerometer *accelerometer;
}

@property (nonatomic, retain) UIAccelerometer *accelerometer;

@end
