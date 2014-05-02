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
    
    mainTimerLabel.text = @"0:00.00";
    running = false;
    splitData = nil;
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
    if(running == false)return;
    
    //Calculate elapsed time
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsed = currentTime - startTime;
    
    //extracting out the minutes, seconds, and fractions of seconds from elapsed time:
    int mins = (int)(elapsed / 60.0);
    elapsed -= mins * 60;
    int secs = (int)(elapsed);
    elapsed -= secs;
    int fraction = elapsed * 100.0;
    
    //update label
    mainTimerLabel.text = [NSString stringWithFormat:@"%u:%02u.%u", mins, secs, fraction];
    
    // call updateTime again after .01 sec
    [self performSelector:@selector(updateTime) withObject: self afterDelay:0.01];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [splitData count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [splitData objectAtIndex:indexPath.row];
    return cell;
}

@end
