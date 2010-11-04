#import "Application.h"
#import "NSDateTimer.h"

@implementation Application
-(id) init{
	updateTimer = [[NSDateTimer alloc] init];
	return self;
}

-(void) update{
	[updateTimer update];
}
	
- (void)dealloc {
	[updateTimer release];
	[super dealloc];
}


@end
