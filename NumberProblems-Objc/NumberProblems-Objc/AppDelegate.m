//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

static int multiple = 8;
static int divisor = 6;
@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   

    [self iterateCount:4.0];
  
    return YES;
    
}

-(void)iterateCount:(int) myNumber {
    int multiplied = [self multiplied:myNumber];
    float divide = [self divide:myNumber];
    NSLog(@"iterate %d", myNumber);
    if (myNumber != 0) {
        NSLog(@"Multiplied %d by %d to be %d", myNumber, multiple, multiplied);
        NSLog(@"Divided %d by %d to be %f" , myNumber, divisor, divide);
        myNumber--;
        [self iterateCount:myNumber];
    }
}
-(int)multiplied:(int) shaggyDog {
    
    int quotient = shaggyDog * multiple;
    return quotient;
}

-(float)divide:(float)notAVeryShaggyDog {
    
    float dividend = notAVeryShaggyDog / divisor;
    return dividend;
}

@end
