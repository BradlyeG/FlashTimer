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

@implementation flashTimerViewController

@synthesize mainTimer;

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



-(IBAction)startStopButton:(id)sender{
    mainTimer.text = @"Start/Stop Button was pressed";
}

-(IBAction)splitButton:(id)sender{
    mainTimer.text = @"Split button was pressed";
}

@end
