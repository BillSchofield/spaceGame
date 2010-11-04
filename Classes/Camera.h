//
//  Camera.h
//  Particles
//
//  Created by bschofil on 9/5/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vector3f.h"

@protocol Camera
-(id) initAtPosition: (Vector3f*) position withTarget: (Vector3f*) target andUpDirection: (Vector3f*) up;
-(void) moveCameraTo: (Vector3f*) position withTarget: (Vector3f*) target andUpDirection: (Vector3f*) up;
@end
