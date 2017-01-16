//
//  InterfaceController.m
//  AGWatch Extension
//
//  Created by Anton Gorlov on 26.05.16.
//  Copyright © 2016 Anton Gorlov. All rights reserved.
//

#import "InterfaceController.h"
#import "AGCoachWatches.h"
#import "NSString+AGFormatTime.h"

@interface InterfaceController()

@property (strong, nonatomic) AGCoachWatches *stopWatch;
@property (strong, nonatomic) NSTimer *updateTimer;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    self.stopWatch = [[AGCoachWatches alloc]init];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


- (IBAction)startAction {
    
    [self.stopWatch startTick];
    
    if (![self.updateTimer isValid]) {
        self.updateTimer = [NSTimer scheduledTimerWithTimeInterval:0.1f
                                                            target:self
                                                          selector:@selector(UpdateCurrentTimeLabel)
                                                          userInfo:nil
                                                           repeats:YES];
        
        [[NSRunLoop mainRunLoop] addTimer:self.updateTimer forMode:NSRunLoopCommonModes];
    }
}

- (IBAction)stopAction {
    
    [self.stopWatch stopTick];
    [self.updateTimer invalidate];
}

- (IBAction)clearAction {
    
    [self.stopWatch clearTick];
    self.displayLabel.text = @".00";
    
    [self.timerLabel setDate:[NSDate dateWithTimeIntervalSinceNow:self.stopWatch.currentTime] ];
}


#pragma mark - Update UI

- (void) UpdateCurrentTimeLabel {

   self.displayLabel.text = [NSString formatTime:self.stopWatch.currentTime];
   
    [self.timerLabel setDate:[NSDate dateWithTimeIntervalSinceNow:self.stopWatch.currentTime] ];
    
}
@end



