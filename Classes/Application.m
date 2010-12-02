#import "Application.h"
#import "NSDateTimer.h"
#import "FixedCameraController.h"
#import "GLCamera.h"
#import "OpenGLCommon.h"

@implementation Application
-(id) init{
	updateTimer = [[NSDateTimer alloc] init];
	entity = [[Entity alloc] initWithPosition:Vector3fOrigin() withRotation:0];
	return self;
}

- (void) placeCamera {
	Vector3f cameraPosition = {0, 0, 20}; 
	Vector3f cameraTarget = {0, 0, 0}; 
	Vector3f cameraUp = {0, 1, 0}; 
	[[FixedCameraController alloc] initWithCamera:[GLCamera alloc] atPosition: &cameraPosition withTarget:&cameraTarget andUpDirection:&cameraUp];

}
-(void) update{
	[entity rotate:0.01];

	[entity moveForwardWithDistance:0.06];
	
	[self placeCamera];
	[entity draw];

	
	[updateTimer update];
}
	
- (void)dealloc {
	[updateTimer release];
	[super dealloc];
}


@end
