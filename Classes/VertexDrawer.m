#import "VertexDrawer.h"
#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR || TARGET_OS_EMBEDDED
#import <OpenGLES/ES1/gl.h>
#else
#import <OpenGL/OpenGL.h>
#endif

@implementation VertexDrawer

- (void) drawLinesBetween: (VertexArray*) vertexArray withColors: (Color *) colorArray
{
	glVertexPointer(3, GL_FLOAT, 0, [vertexArray getVertices]);
	glColorPointer(4, GL_UNSIGNED_BYTE, 0, colorArray);
	
	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_COLOR_ARRAY);
	//glEnable (GL_BLEND);
	//glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	glDrawArrays(GL_LINE_LOOP, 0, [vertexArray getNumberOfVertices]);
	glDisableClientState(GL_COLOR_ARRAY);
	glDisableClientState(GL_VERTEX_ARRAY);
	
}

- (void) drawLinesBetween: (VertexArray*) vertexArray withColor: (Color) color
{
	glVertexPointer(3, GL_FLOAT, 0, [vertexArray getVertices]);
	glColor4f(color.red, color.green, color.blue, color.alpha);	
	glEnableClientState(GL_VERTEX_ARRAY);
	glDrawArrays(GL_LINE_LOOP, 0, [vertexArray getNumberOfVertices]);
	glDisableClientState(GL_VERTEX_ARRAY);
	
}

@end
