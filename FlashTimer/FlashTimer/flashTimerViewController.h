//
//  flashTimerViewController.h
//  FlashTimer
//
//  Created by sync on 4/18/14.
//  Copyright (c) 2014 DCHS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface flashTimerViewController : UIViewController{
    
}

@property (nonatomic, retain)UILabel* mainTimer;
-(IBAction)startStopButton:(id)sender;
-(IBAction)splitButton:(id)sender;
@end
