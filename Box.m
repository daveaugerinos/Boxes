//
//  Box.m
//  Boxes
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import "Box.h"

@implementation Box

// Creates box based on supplied parameters
-(instancetype)initWithHeight:(float)height andWidth:(float)width andLength:(float)length
{
    self = [super init];
    if (self) {
        self.height = height;
        self.width = width;
        self.length = length;
        self.volume = [self volume];
    }
    return self;
}

// Calculates and returns volume of a supplied box object
-(float)volume {

    return self.height * self.width * self.length;
    
}

// Checks how many times volume of supplied box fits inside box object and returns count
-(float)boxFitCountByVolume:(Box *)myBox {
    
    float fitCount;

//    NSLog(@"self vol: %f",self.volume);
//    NSLog(@"mybox vol: %f",myBox.volume);
    
    if(myBox.volume > self.volume) {

        fitCount = myBox.volume / self.volume;
    }
    
    return fitCount;
}

@end
