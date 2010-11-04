//
//  AccelerationControllerTests.m
//  Particles
//
//  Created by bschofil on 9/4/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "AccelerationControllerTests.h"

@implementation AccelerationControllerTests
- (void) setUp
{
	initialPosition = Vector3fMake(1, 1, 1);
}

- (void) tearDown
{
}

- (void) testGivenSomeVelocityAndNoAccelerationWhenNoTimePassesThenPositionIsUnchanged {
	STAssertEquals(initialPosition, Vector3fMake(1, 1, 1), @"Trivial test");
}

@end
