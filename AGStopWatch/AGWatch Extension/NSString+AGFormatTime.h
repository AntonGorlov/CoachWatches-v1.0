//
//  NSString+AGFormatTime.h
//  AGStopWatch
//
//  Created by Anton Gorlov on 26.05.16.
//  Copyright © 2016 Anton Gorlov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AGFormatTime)

+ (NSString*) formatTime:(NSTimeInterval) time;

@end
