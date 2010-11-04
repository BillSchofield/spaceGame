#import "Timer.h"

@interface Application : NSObject {
	Timer* updateTimer;
}
- (id) init;
- (void) update;

@end
