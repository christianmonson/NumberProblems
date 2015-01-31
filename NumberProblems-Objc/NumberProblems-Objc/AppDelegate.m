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
    int product = [self multiplied:myNumber];
    float divide = [self divided:product];
    NSLog(@"iterate %d", myNumber);
    if (myNumber != 0) {
        NSLog(@"Multiplied %d by %d to be %d", myNumber, multiple, product);
        NSLog(@"Divided %d by %d to be %f" , product, divisor, divide);
        myNumber--;
        [self iterateCount:myNumber];
    }
}
-(int)multiplied:(int) shaggyDog {
    
    int product = shaggyDog * multiple;
    return product;
}

-(float)divided:(float)notAVeryShaggyDog {
    
    float dividend = notAVeryShaggyDog / divisor;
    return dividend;
}

@end
