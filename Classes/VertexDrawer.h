#import "VertexArray.h"
#import "Color.h"

@interface VertexDrawer : NSObject {
}
- (void) drawLinesBetween: (VertexArray*) vertexArray withColors: (Color *) colorArray;
- (void) drawLinesBetween: (VertexArray*) vertexArray withColor: (Color) color;


@end
