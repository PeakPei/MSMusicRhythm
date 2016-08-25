//
//  HNHHEQVisualizer.h
//  HNHH
//
//  Created by mr.scorpion on 2/17/16.
//  Copyright (c) 2016 RC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EQVisualizer : UIView


@property (nonatomic, retain) UIColor* barColor;


- (id)initWithNumberOfBars:(int)numberOfBars;

//Starts NSTimer and begins the animation
-(void)start;


//Stops NSTimer by invalidating and stops the animation
-(void)stop;

@end
