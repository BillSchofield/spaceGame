#import "Vector3f.h"

@interface Entity : NSObject {

	Vector3f position;
	double rotation;

}

@property(assign) Vector3f position;
@property(assign) double rotation;

-(id) initWithPosition: (Vector3f) pos withRotation: (double) rot; 
-(void) moveForwardWithDistance: (double) distance;
-(void) rotate: (double) angle;
-(void) draw;
@end
