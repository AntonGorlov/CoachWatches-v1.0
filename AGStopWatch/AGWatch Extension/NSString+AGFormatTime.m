//
//  NSString+AGFormatTime.m
//  AGStopWatch
//
//  Created by Anton Gorlov on 26.05.16.
//  Copyright © 2016 Anton Gorlov. All rights reserved.
//

#import "NSString+AGFormatTime.h"

@implementation NSString (AGFormatTime)

+ (NSString*) formatTime:(NSTimeInterval) time {
    
    int seconds = (int)time;
    
    int milliseconds = (time - seconds) * 90;
    /*
    int minutes = (int)time / 60;

    return [NSString stringWithFormat:@"%02i:%02i.%02i",minutes % 60,seconds % 60, milliseconds % 60];
     */
    return [NSString stringWithFormat:@".%02i", milliseconds % 60];
}

@end
