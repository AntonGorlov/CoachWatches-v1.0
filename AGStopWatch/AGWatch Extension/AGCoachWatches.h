//
//  AGCoachWatches.h
//  AGStopWatch
//
//  Created by Anton Gorlov on 26.05.16.
//  Copyright © 2016 Anton Gorlov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGCoachWatches : NSObject

@property (assign, nonatomic,readonly) NSTimeInterval currentTime;
//@property (nonatomic, assign, readonly, getter = isRunning) BOOL running;

- (void) startTick;
- (void) stopTick;
- (void) clearTick;


@end
