//
//  FlashTimerViewController.h
//  FlashTimer
//
//  Created by sync on 4/30/14.
//  Copyright (c) 2014 DCHS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlashTimerViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    bool running;
    NSTimeInterval startTime;
    NSArray *splitData;
}

@property(nonatomic, retain)IBOutlet UILabel* mainTimerLabel;

-(IBAction)mainTimerPress:(id)sender;
-(IBAction)splitButtonPress:(id)sender;

@end
