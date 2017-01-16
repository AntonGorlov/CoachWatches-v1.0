//
//  AGCoachWatches.m
//  AGStopWatch
//
//  Created by Anton Gorlov on 26.05.16.
//  Copyright © 2016 Anton Gorlov. All rights reserved.
//

#import "AGCoachWatches.h"

@interface AGCoachWatches ()

@property (nonatomic, assign, readwrite, getter = isRunning) BOOL running;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *finishTime;
@property (nonatomic, strong) NSDate *resetTime;
@property (nonatomic, assign, readwrite) NSTimeInterval currentTime;



@end

@implementation AGCoachWatches

- (instancetype) init
{
    self = [super init];
    
    if (self) {
        _currentTime = 0;
        _startTime   = nil;
        _finishTime  = nil;
        _running     = NO;
        
    }
    return self;
}


#pragma mark -Timer tick

- (void) startTick {

    self.running   = YES;
    self.startTime = [NSDate date];

}

- (void) stopTick {

    self.running    = NO;
    self.finishTime = [NSDate date];

}

- (void) clearTick {

    self.running     = NO;
    self.startTime   = nil;
    self.finishTime  = nil;
    self.currentTime = 0;
    
}

#pragma mark -Timer tick

- (NSTimeInterval) currentTime {
    
    if (_running) {
        
        return [[NSDate date] timeIntervalSinceDate:self.startTime];
    }

    return [self.finishTime timeIntervalSinceDate:self.startTime];
}

@end
