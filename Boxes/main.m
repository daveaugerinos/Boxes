//
//  main.m
//  Boxes
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create Box objects
        Box *box1 = [[Box alloc] initWithHeight:10.0 andWidth:10.0 andLength:10.0];
        Box *box2 = [[Box alloc] initWithHeight:100.0 andWidth:100.0 andLength:100.0];
        Box *box3 = [[Box alloc] initWithHeight:2.0 andWidth:2.0 andLength:2.0];
        
        // Find out how many times a box fits inside another box
        NSLog(@"Box 1 (volume of %.2f) fits inside Box 2 (volume of %.2f): %.2f times", box1.volume, box2.volume, [box1 boxFitCountByVolume:box2]);
        NSLog(@"Box 2 (volume of %.2f) fits inside Box 1 (volume of %.2f): %.2f times", box2.volume, box1.volume, [box2 boxFitCountByVolume:box1]);
        NSLog(@"Box 3 (volume of %.2f) fits inside Box 1 (volume of %.2f): %.2f times", box3.volume, box1.volume, [box3 boxFitCountByVolume:box1]);

    }
    return 0;
}
