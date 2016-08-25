//
//  HNHHEQVisualizer.m
//  HNHH
//
//  Created by mr.scorpion on 2/17/16.
//  Copyright (c) 2016 RC. All rights reserved.
//

#import "EQVisualizer.h"
#import "UIImage+Color.h"

#define kWidth 12
#define kHeight 50
#define kPadding 1


@implementation EQVisualizer
{
    NSTimer* timer;
    NSArray* barArray;
}

- (instancetype)initWithNumberOfBars:(int)numberOfBars
{
    if (self = [super init]) {
        self.frame = CGRectMake(0, 0, kPadding*numberOfBars+(kWidth*numberOfBars), kHeight);
        NSMutableArray* tempBarArray = [[NSMutableArray alloc]initWithCapacity:numberOfBars];
        for(int i=0;i<numberOfBars;i++)
        {
            UIImageView* bar = [[UIImageView alloc]initWithFrame:CGRectMake(i*kWidth+i*kPadding, 0, kWidth, 1)];
            bar.image = [UIImage imageWithColor:self.barColor];
            [self addSubview:bar];
            [tempBarArray addObject:bar];
        }

        barArray = [[NSArray alloc]initWithArray:tempBarArray];
        CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_2*2);
        self.transform = transform;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(stop) name:@"stopTimer" object:nil];
    }
    return self;
}


- (void)start
{
    self.hidden = NO;
    timer = [NSTimer scheduledTimerWithTimeInterval:.35 target:self selector:@selector(ticker) userInfo:nil repeats:YES];
}

- (void)stop
{
    [timer invalidate];
    timer = nil;
}

- (void)ticker
{
    [UIView animateWithDuration:.35 animations:^{
        for(UIImageView* bar in barArray){
            CGRect rect = bar.frame;
            rect.size.height = arc4random() % kHeight + 1;
            bar.frame = rect;
        }
    }];
}
@end
