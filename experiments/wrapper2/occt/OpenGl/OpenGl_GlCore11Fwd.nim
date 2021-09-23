##  Created on: 2014-03-17
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  OpenGl_GlFunctions

## ! OpenGL 1.1 core without deprecated Fixed Pipeline entry points.
## ! Notice that all functions within this structure are actually exported by system GL library.
## ! The main purpose for these hint - to control visibility of functions per GL version
## ! (global functions should not be used directly to achieve this effect!).

type
  OpenGl_GlCore11Fwd* {.importcpp: "OpenGl_GlCore11Fwd",
                       header: "OpenGl_GlCore11Fwd.hxx", bycopy.} = object of OpenGl_GlFunctions ##
                                                                                          ## !
                                                                                          ## @name
                                                                                          ## Miscellaneous
                                                                                          ##
                                                                                          ## !
                                                                                          ## @name
                                                                                          ## Depth
                                                                                          ## Buffer


proc glClearColor*(this: var OpenGl_GlCore11Fwd; theRed: GLclampf; theGreen: GLclampf;
                  theBlue: GLclampf; theAlpha: GLclampf) {.
    importcpp: "glClearColor", header: "OpenGl_GlCore11Fwd.hxx".}
proc glClear*(this: var OpenGl_GlCore11Fwd; theMask: GLbitfield) {.
    importcpp: "glClear", header: "OpenGl_GlCore11Fwd.hxx".}
proc glColorMask*(this: var OpenGl_GlCore11Fwd; theRed: GLboolean;
                 theGreen: GLboolean; theBlue: GLboolean; theAlpha: GLboolean) {.
    importcpp: "glColorMask", header: "OpenGl_GlCore11Fwd.hxx".}
proc glBlendFunc*(this: var OpenGl_GlCore11Fwd; sfactor: GLenum; dfactor: GLenum) {.
    importcpp: "glBlendFunc", header: "OpenGl_GlCore11Fwd.hxx".}
proc glCullFace*(this: var OpenGl_GlCore11Fwd; theMode: GLenum) {.
    importcpp: "glCullFace", header: "OpenGl_GlCore11Fwd.hxx".}
proc glFrontFace*(this: var OpenGl_GlCore11Fwd; theMode: GLenum) {.
    importcpp: "glFrontFace", header: "OpenGl_GlCore11Fwd.hxx".}
proc glLineWidth*(this: var OpenGl_GlCore11Fwd; theWidth: GLfloat) {.
    importcpp: "glLineWidth", header: "OpenGl_GlCore11Fwd.hxx".}
proc glPolygonOffset*(this: var OpenGl_GlCore11Fwd; theFactor: GLfloat;
                     theUnits: GLfloat) {.importcpp: "glPolygonOffset",
                                        header: "OpenGl_GlCore11Fwd.hxx".}
proc glScissor*(this: var OpenGl_GlCore11Fwd; theX: GLint; theY: GLint;
               theWidth: GLsizei; theHeight: GLsizei) {.importcpp: "glScissor",
    header: "OpenGl_GlCore11Fwd.hxx".}
proc glEnable*(this: var OpenGl_GlCore11Fwd; theCap: GLenum) {.importcpp: "glEnable",
    header: "OpenGl_GlCore11Fwd.hxx".}
proc glDisable*(this: var OpenGl_GlCore11Fwd; theCap: GLenum) {.
    importcpp: "glDisable", header: "OpenGl_GlCore11Fwd.hxx".}
proc glIsEnabled*(this: var OpenGl_GlCore11Fwd; theCap: GLenum): GLboolean {.
    importcpp: "glIsEnabled", header: "OpenGl_GlCore11Fwd.hxx".}
proc glGetBooleanv*(this: var OpenGl_GlCore11Fwd; theParamName: GLenum;
                   theValues: ptr GLboolean) {.importcpp: "glGetBooleanv",
    header: "OpenGl_GlCore11Fwd.hxx".}
proc glGetFloatv*(this: var OpenGl_GlCore11Fwd; theParamName: GLenum;
                 theValues: ptr GLfloat) {.importcpp: "glGetFloatv",
                                        header: "OpenGl_GlCore11Fwd.hxx".}
proc glGetIntegerv*(this: var OpenGl_GlCore11Fwd; theParamName: GLenum;
                   theValues: ptr GLint) {.importcpp: "glGetIntegerv",
                                        header: "OpenGl_GlCore11Fwd.hxx".}
proc glGetError*(this: var OpenGl_GlCore11Fwd): GLenum {.importcpp: "glGetError",
    header: "OpenGl_GlCore11Fwd.hxx".}
proc glGetString*(this: var OpenGl_GlCore11Fwd; theName: GLenum): ptr GLubyte {.
    importcpp: "glGetString", header: "OpenGl_GlCore11Fwd.hxx".}
proc glFinish*(this: var OpenGl_GlCore11Fwd) {.importcpp: "glFinish",
    header: "OpenGl_GlCore11Fwd.hxx".}
proc glFlush*(this: var OpenGl_GlCore11Fwd) {.importcpp: "glFlush",
    header: "OpenGl_GlCore11Fwd.hxx".}
proc glHint*(this: var OpenGl_GlCore11Fwd; theTarget: GLenum; theMode: GLenum) {.
    importcpp: "glHint", header: "OpenGl_GlCore11Fwd.hxx".}
## !!!Ignored construct:  public : ! @name Depth Buffer inline void glClearDepth ( GLclampd theDepth ) { # defined ( GL_ES_VERSION_2_0 ) [NewLine] :: glClearDepthf ( ( GLfloat ) theDepth ) ; # [NewLine] :: glClearDepth ( theDepth ) ; # [NewLine] } inline void glClearDepthf ( GLfloat theDepth ) { # defined ( GL_ES_VERSION_2_0 ) [NewLine] :: glClearDepthf ( theDepth ) ; # [NewLine] :: glClearDepth ( ( GLclampd ) theDepth ) ; # [NewLine] } inline void glDepthFunc ( GLenum theFunc ) { :: glDepthFunc ( theFunc ) ; } inline void glDepthMask ( GLboolean theFlag ) { :: glDepthMask ( theFlag ) ; } inline void glDepthRange ( GLclampd theNearValue , GLclampd theFarValue ) { # defined ( GL_ES_VERSION_2_0 ) [NewLine] :: glDepthRangef ( ( GLfloat ) theNearValue , ( GLfloat ) theFarValue ) ; # [NewLine] :: glDepthRange ( theNearValue , theFarValue ) ; # [NewLine] } inline void glDepthRangef ( GLfloat theNearValue , GLfloat theFarValue ) { # defined ( GL_ES_VERSION_2_0 ) [NewLine] :: glDepthRangef ( theNearValue , theFarValue ) ; # [NewLine] :: glDepthRange ( ( GLclampd ) theNearValue , ( GLclampd ) theFarValue ) ; # [NewLine] } public : ! @name Transformation inline void glViewport ( GLint theX , GLint theY , GLsizei theWidth , GLsizei theHeight ) { :: glViewport ( theX , theY , theWidth , theHeight ) ; } public : ! @name Vertex Arrays inline void glDrawArrays ( GLenum theMode , GLint theFirst , GLsizei theCount ) { :: glDrawArrays ( theMode , theFirst , theCount ) ; } inline void glDrawElements ( GLenum theMode , GLsizei theCount , GLenum theType , const GLvoid * theIndices ) { :: glDrawElements ( theMode , theCount , theType , theIndices ) ; } public : ! @name Raster functions inline void glPixelStorei ( GLenum theParamName , GLint theParam ) { :: glPixelStorei ( theParamName , theParam ) ; } inline void glReadPixels ( GLint x , GLint y , GLsizei width , GLsizei height , GLenum format , GLenum type , GLvoid * pixels ) { :: glReadPixels ( x , y , width , height , format , type , pixels ) ; } public : ! @name Stenciling inline void glStencilFunc ( GLenum func , GLint ref , GLuint mask ) { :: glStencilFunc ( func , ref , mask ) ; } inline void glStencilMask ( GLuint mask ) { :: glStencilMask ( mask ) ; } inline void glStencilOp ( GLenum fail , GLenum zfail , GLenum zpass ) { :: glStencilOp ( fail , zfail , zpass ) ; } inline void glClearStencil ( GLint s ) { :: glClearStencil ( s ) ; } public : ! @name Texture mapping inline void glTexParameterf ( GLenum target , GLenum pname , GLfloat param ) { :: glTexParameterf ( target , pname , param ) ; } inline void glTexParameteri ( GLenum target , GLenum pname , GLint param ) { :: glTexParameteri ( target , pname , param ) ; } inline void glTexParameterfv ( GLenum target , GLenum pname , const GLfloat * params ) { :: glTexParameterfv ( target , pname , params ) ; } inline void glTexParameteriv ( GLenum target , GLenum pname , const GLint * params ) { :: glTexParameteriv ( target , pname , params ) ; } inline void glGetTexParameterfv ( GLenum target , GLenum pname , GLfloat * params ) { :: glGetTexParameterfv ( target , pname , params ) ; } inline void glGetTexParameteriv ( GLenum target , GLenum pname , GLint * params ) { :: glGetTexParameteriv ( target , pname , params ) ; } inline void glTexImage2D ( GLenum target , GLint level , GLint internalFormat , GLsizei width , GLsizei height , GLint border , GLenum format , GLenum type , const GLvoid * pixels ) { :: glTexImage2D ( target , level , internalFormat , width , height , border , format , type , pixels ) ; } inline void glGenTextures ( GLsizei n , GLuint * textures ) { :: glGenTextures ( n , textures ) ; } inline void glDeleteTextures ( GLsizei n , const GLuint * textures ) { :: glDeleteTextures ( n , textures ) ; } inline void glBindTexture ( GLenum target , GLuint texture ) { :: glBindTexture ( target , texture ) ; } inline GLboolean glIsTexture ( GLuint texture ) { return :: glIsTexture ( texture ) ; } inline void glTexSubImage2D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLsizei width , GLsizei height , GLenum format , GLenum type , const GLvoid * pixels ) { :: glTexSubImage2D ( target , level , xoffset , yoffset , width , height , format , type , pixels ) ; } inline void glCopyTexImage2D ( GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLsizei height , GLint border ) { :: glCopyTexImage2D ( target , level , internalformat , x , y , width , height , border ) ; } inline void glCopyTexSubImage2D ( GLenum target , GLint level , GLint xoffset , GLint yoffset , GLint x , GLint y , GLsizei width , GLsizei height ) { :: glCopyTexSubImage2D ( target , level , xoffset , yoffset , x , y , width , height ) ; } # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] inline void glTexImage1D ( GLenum target , GLint level , GLint internalFormat , GLsizei width , GLint border , GLenum format , GLenum type , const GLvoid * pixels ) { :: glTexImage1D ( target , level , internalFormat , width , border , format , type , pixels ) ; } inline void glTexSubImage1D ( GLenum target , GLint level , GLint xoffset , GLsizei width , GLenum format , GLenum type , const GLvoid * pixels ) { :: glTexSubImage1D ( target , level , xoffset , width , format , type , pixels ) ; } inline void glCopyTexImage1D ( GLenum target , GLint level , GLenum internalformat , GLint x , GLint y , GLsizei width , GLint border ) { :: glCopyTexImage1D ( target , level , internalformat , x , y , width , border ) ; } inline void glCopyTexSubImage1D ( GLenum target , GLint level , GLint xoffset , GLint x , GLint y , GLsizei width ) { :: glCopyTexSubImage1D ( target , level , xoffset , x , y , width ) ; } inline void glGetTexImage ( GLenum target , GLint level , GLenum format , GLenum type , GLvoid * pixels ) { :: glGetTexImage ( target , level , format , type , pixels ) ; } # [NewLine] # ! defined ( GL_ES_VERSION_2_0 ) [NewLine] inline void glAlphaFunc ( GLenum theFunc , GLclampf theRef ) { :: glAlphaFunc ( theFunc , theRef ) ; } inline void glPointSize ( GLfloat theSize ) { :: glPointSize ( theSize ) ; } # [NewLine] #if !defined(GL_ES_VERSION_2_0)
##
##   inline void glTexEnvf (GLenum target, GLenum pname, GLfloat param)
##   {
##     ::glTexEnvf (target, pname, param);
##   }
##
##   inline void glTexEnvi (GLenum target, GLenum pname, GLint param)
##   {
##     ::glTexEnvi (target, pname, param);
##   }
##
##   inline void glTexEnvfv (GLenum target, GLenum pname, const GLfloat* params)
##   {
##     ::glTexEnvfv (target, pname, params);
##   }
##
##   inline void glTexEnviv (GLenum target, GLenum pname, const GLint* params)
##   {
##     ::glTexEnviv (target, pname, params);
##   }
##
##   inline void glGetTexEnvfv (GLenum target, GLenum pname, GLfloat* params)
##   {
##     ::glGetTexEnvfv (target, pname, params);
##   }
##
##   inline void glGetTexEnviv (GLenum target, GLenum pname, GLint* params)
##   {
##     ::glGetTexEnviv (target, pname, params);
##   }
##
##   inline void glGetTexLevelParameterfv (GLenum target, GLint level, GLenum pname, GLfloat* params)
##   {
##     ::glGetTexLevelParameterfv (target, level, pname, params);
##   }
##
##   inline void glGetTexLevelParameteriv (GLenum target, GLint level, GLenum pname, GLint* params)
##   {
##     ::glGetTexLevelParameteriv (target, level, pname, params);
##   }
##
##   inline void glClearIndex (GLfloat c)
##   {
##     ::glClearIndex(c);
##   }
##
##   inline void glIndexMask (GLuint theMask)
##   {
##     ::glIndexMask (theMask);
##   }
##
##   inline void glLogicOp (GLenum opcode)
##   {
##     ::glLogicOp(opcode);
##   }
##
##   inline void glPolygonMode (GLenum theFace, GLenum theMode)
##   {
##     ::glPolygonMode (theFace, theMode);
##   }
##
##   inline void glDrawBuffer (GLenum theMode)
##   {
##     ::glDrawBuffer (theMode);
##   }
##
##   inline void glReadBuffer (GLenum theMode)
##   {
##     ::glReadBuffer (theMode);
##   }
##
##   inline void glGetDoublev (GLenum theParamName, GLdouble* theValues)
##   {
##     ::glGetDoublev (theParamName, theValues);
##   }
##
##   inline GLint glRenderMode (GLenum theMode)
##   {
##     return ::glRenderMode (theMode);
##   }
##
##   inline void glArrayElement (GLint i)
##   {
##     ::glArrayElement (i);
##   }
##
##   inline void glPixelStoref (GLenum theParamName, GLfloat theParam)
##   {
##     ::glPixelStoref (theParamName, theParam);
##   }
##
##   inline void glPixelTransferf (GLenum theParamName, GLfloat theParam)
##   {
##     ::glPixelTransferf (theParamName, theParam);
##   }
##
##   inline void glPixelTransferi (GLenum theParamName, GLint   theParam)
##   {
##     ::glPixelTransferi (theParamName, theParam);
##   }
##
##   inline void glPixelMapfv  (GLenum map, GLsizei mapsize, const GLfloat*  values)
##   {
##     ::glPixelMapfv (map, mapsize, values);
##   }
##
##   inline void glPixelMapuiv (GLenum map, GLsizei mapsize, const GLuint*   values)
##   {
##     ::glPixelMapuiv (map, mapsize, values);
##   }
##
##   inline void glPixelMapusv (GLenum map, GLsizei mapsize, const GLushort* values)
##   {
##     ::glPixelMapusv (map, mapsize, values);
##   }
##
##   inline void glGetPixelMapfv  (GLenum map, GLfloat*  values)
##   {
##     ::glGetPixelMapfv (map, values);
##   }
##
##   inline void glGetPixelMapuiv (GLenum map, GLuint*   values)
##   {
##     ::glGetPixelMapuiv (map, values);
##   }
##
##   inline void glGetPixelMapusv (GLenum map, GLushort* values)
##   {
##     ::glGetPixelMapusv (map, values);
##   }
## #endif }
## Error: token expected: } but got: ::!!!
