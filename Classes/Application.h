#import "Timer.h"
#import "Entity.h"

@interface Application : NSObject {
	Timer* updateTimer;
	Entity* entity;
}
- (id) init;
- (void) update;

@end
