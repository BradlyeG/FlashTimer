//
//  FlashTimerViewController.m
//  FlashTimer
//
//  Created by sync on 4/30/14.
//  Copyright (c) 2014 DCHS. All rights reserved.
//

#import "FlashTimerViewController.h"

@interface FlashTimerViewController ()

@end

@implementation FlashTimerViewController

@synthesize mainTimerLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    mainTimerLabel.text = @"0:00.0";
    running = false;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)mainTimerPress:(id)sender
{
    if (running == false) {
        running = true;
        startTime = [NSDate timeIntervalSinceReferenceDate];
        [sender setTitle:@"STOP" forState:UIControlStateNormal];
        [self updateTime];
    }
    else
    {
        [sender setTitle:@"START" forState:UIControlStateNormal];
        running = false;
    }
}

-(IBAction)splitButtonPress:(id)sender
{
    
}

-(void)updateTime
{
    
}


@end
