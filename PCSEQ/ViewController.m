//
//  mr.scorpionViewController.m
//  mr.scorpionEQ
//
//  Created by mr.scorpion on 2/28/16.
//  Copyright (c) 2016 mr.scorpion. All rights reserved.
//

#import "ViewController.h"
#import "EQVisualizer.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    EQVisualizer* eq = [[EQVisualizer alloc]initWithNumberOfBars:20];
    //position eq in the middle of the view
    CGRect frame = eq.frame;
    frame.origin.x = (self.view.frame.size.width - eq.frame.size.width)/2;
    frame.origin.y = (self.view.frame.size.height - eq.frame.size.height)/2;
    eq.frame = frame;
    
    [self.view addSubview:eq];
    [eq start];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
