import opengl_types
import ../standard/standard_types
import ../aspect/aspect_types
##  Created on: 2011-09-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

when defined(apple):
  discard
##  #if defined(TARGET_OS_IPHONE) && TARGET_OS_IPHONE
##    #ifdef __OBJC__
##      @class UIView;
##    #else
##      struct UIView;
##    #endif
##  #endif

discard "forward decl of OpenGl_Context"
discard "forward decl of OpenGl_GraphicDriver"
discard "forward decl of OpenGl_Window"




proc newOpenGlWindow*(theDriver: Handle[OpenGlGraphicDriver];
                     thePlatformWindow: Handle[AspectWindow];
                     theGContext: AspectRenderingContext;
                     theCaps: Handle[OpenGlCaps];
                     theShareCtx: Handle[OpenGlContext]): OpenGlWindow {.cdecl,
    constructor, importcpp: "OpenGl_Window(@)", header: "OpenGl_Windows.hxx".}
proc destroyOpenGlWindow*(this: var OpenGlWindow) {.cdecl,
    importcpp: "#.~OpenGl_Window()", header: "OpenGl_Windows.hxx".}
proc resize*(this: var OpenGlWindow) {.cdecl, importcpp: "Resize", header: "OpenGl_Windows.hxx".}
proc platformWindow*(this: var OpenGlWindow): Handle[AspectWindow] {.cdecl,
    importcpp: "PlatformWindow", header: "OpenGl_Windows.hxx".}
proc width*(this: OpenGlWindow): cint {.noSideEffect, cdecl, importcpp: "Width",
                                    header: "OpenGl_Windows.hxx".}
proc height*(this: OpenGlWindow): cint {.noSideEffect, cdecl, importcpp: "Height",
                                     header: "OpenGl_Windows.hxx".}
proc getGlContext*(this: OpenGlWindow): Handle[OpenGlContext] {.noSideEffect, cdecl,
    importcpp: "GetGlContext", header: "OpenGl_Windows.hxx".}
proc init*(this: var OpenGlWindow) {.cdecl, importcpp: "Init", header: "OpenGl_Windows.hxx".}
proc activate*(this: var OpenGlWindow): bool {.cdecl, importcpp: "Activate",
    header: "OpenGl_Windows.hxx".}
proc setSwapInterval*(this: var OpenGlWindow; theToForceNoSync: bool) {.cdecl,
    importcpp: "SetSwapInterval", header: "OpenGl_Windows.hxx".}
