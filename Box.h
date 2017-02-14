//
//  Box.h
//  Boxes
//
//  Created by Dave Augerinos on 2017-02-07.
//  Copyright © 2017 Dave Augerinos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

// Properties
@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;
@property (nonatomic) float volume;


// Methods
-(id)initWithHeight: (float)height andWidth: (float)width andLength: (float)length;
-(float)volume;
-(float)boxFitCountByVolume: (Box *)myBox;

@end
