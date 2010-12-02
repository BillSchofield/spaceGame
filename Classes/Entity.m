//
//  Entity.m
//  spaceGame
//
//  Created by bschofil on 12/1/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "Entity.h"
#import "VertexDrawer.h"
#import "VertexArray.h"


@implementation Entity

@synthesize position;

-(id) initWithPosition: (Vector3f) pos withRotation: (double) rot {
	Vector3fCopy(&position, &pos);
	rotation = rot;
	return self;
}

-(void) moveForwardWithDistance: (double) distance {
	position.x += distance * cos(rotation);
	position.y += distance * sin(rotation);
}

-(void) rotate: (double) angle {
	rotation += angle;
}

- (void) draw {
	VertexArray* triangleVertices = [[VertexArray alloc] init: 3];
	
	Vector3f* points = [triangleVertices getVertices];
	points[0].x = position.x + cos(rotation + 0) * 2;
	points[0].y = position.y + sin(rotation + 0) * 2;
	points[0].z = position.z + 0;
	
	points[1].x = position.x + cos(rotation + PI*3/4) * 2;
	points[1].y = position.y + sin(rotation + PI*3/4) * 2;
	points[1].z = position.z + 0;
	
	points[2].x = position.x + cos(rotation - PI*3/4) * 2;
	points[2].y = position.y + sin(rotation - PI*3/4) * 2;
	points[2].z = position.z + 0;
	
	VertexDrawer* lineDrawer = [VertexDrawer alloc];
	Color red = {1, 0, 0, 1};
	[lineDrawer drawLinesBetween: triangleVertices withColor: red];
	
}

@end
