#import "Application.h"
#import "NSDateTimer.h"
#import "VertexDrawer.h"
#import "VertexArray.h"
#import "FixedCameraController.h"
#import "GLCamera.h"
#import "OpenGLCommon.h"

@implementation Application
-(id) init{
	updateTimer = [[NSDateTimer alloc] init];
	return self;
}

- (void) drawTriangleAt: (Vector3f*) position withRotationInRadians: (double) rotation{
	VertexArray* triangleVertices = [[VertexArray alloc] init: 3];
	
	Vector3f* points = [triangleVertices getVertices];
	points[0].x = position->x + cos(rotation + 0) * 2;
	points[0].y = position->y + sin(rotation + 0) * 2;
	points[0].z = position->z + 0;

	points[1].x = position->x + cos(rotation + PI*3/4) * 2;
	points[1].y = position->y + sin(rotation + PI*3/4) * 2;
	points[1].z = position->z + 0;
	
	points[2].x = position->x + cos(rotation - PI*3/4) * 2;
	points[2].y = position->y + sin(rotation - PI*3/4) * 2;
	points[2].z = position->z + 0;
	
	VertexDrawer* lineDrawer = [VertexDrawer alloc];
	Color red = {1, 0, 0, 1};
	[lineDrawer drawLinesBetween: triangleVertices withColor: red];

}
- (void) placeCamera {
	Vector3f cameraPosition = {0, 0, 20}; 
	Vector3f cameraTarget = {0, 0, 0}; 
	Vector3f cameraUp = {0, 1, 0}; 
	[[FixedCameraController alloc] initWithCamera:[GLCamera alloc] atPosition: &cameraPosition withTarget:&cameraTarget andUpDirection:&cameraUp];

}
-(void) update{
	static Vector3f position = {0,0,0};	
	static double rotation = 0.0;
	rotation += 0.01;

	position.x += 0.06 * cos(rotation);
	position.y += 0.06 * sin(rotation);
	
	[self placeCamera];
	[self drawTriangleAt: &position withRotationInRadians: rotation];

	
	[updateTimer update];
}
	
- (void)dealloc {
	[updateTimer release];
	[super dealloc];
}


@end
