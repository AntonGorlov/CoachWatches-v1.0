//
//  InterfaceController.h
//  AGWatch Extension
//
//  Created by Anton Gorlov on 26.05.16.
//  Copyright © 2016 Anton Gorlov. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *displayLabel;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceTimer *timerLabel;

- (IBAction)startAction;

- (IBAction)stopAction;
- (IBAction)clearAction;

@end
