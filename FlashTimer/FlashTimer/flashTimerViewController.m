//
//  flashTimerViewController.m
//  FlashTimer
//
//  Created by sync on 4/18/14.
//  Copyright (c) 2014 DCHS. All rights reserved.
//

#import "flashTimerViewController.h"

@interface flashTimerViewController ()

@end

@implementation flashTimerViewController{
    NSTimer* timer;
}

@synthesize mainTimer;
@synthesize splitTable;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)startStopButton:(id)sender
{
    //mainTimer.text = @"Start/Stop Button was pressed";
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(increaseTimerCount) userInfo:nil repeats:YES];
    
}

-(IBAction)splitButton:(id)sender
{
    mainTimer.text = @"Split button was pressed";
}

-(void)increaseTimerCount
{
    mainTimer.text = [NSString stringWithFormat:@"%@", timer];
}

@end
