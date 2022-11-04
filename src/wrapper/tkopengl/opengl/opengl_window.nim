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
type
  HandleOpenGlWindow* = Handle[OpenGlWindow]

## ! This class represents low-level wrapper over window with GL context.
## ! The window itself should be provided to constructor.

type
  OpenGlWindow* {.importcpp: "OpenGl_Window", header: "OpenGl_Window.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Main
                                                                                                        ## constructor
                                                                                                        ## -
                                                                                                        ## prepare
                                                                                                        ## GL
                                                                                                        ## context
                                                                                                        ## for
                                                                                                        ## specified
                                                                                                        ## window.
                                                                                                        ##
                                                                                                        ## Type
                                                                                                        ## definition
    ## !< set to TRUE if GL context was not created by this class
    ## !< software platform window wrapper
    ##  #if defined(__APPLE__)
    ##  #if defined(TARGET_OS_IPHONE) && TARGET_OS_IPHONE
    ##    UIView*                myUIView;
    ##  #endif
    ##    Standard_Integer       myWidthPt;     //!< window width  in logical units
    ##    Standard_Integer       myHeightPt;    //!< window height in logical units
    ##  #endif
    ## !< window width  in pixels
    ## !< window height in pixels
    ## !< last assigned swap interval (VSync) for this window


proc newOpenGlWindow*(theDriver: Handle[OpenGlGraphicDriver];
                     thePlatformWindow: Handle[AspectWindow];
                     theGContext: AspectRenderingContext;
                     theCaps: Handle[OpenGlCaps];
                     theShareCtx: Handle[OpenGlContext]): OpenGlWindow {.cdecl,
    constructor, importcpp: "OpenGl_Window(@)", dynlib: tkkxbase.}
proc destroyOpenGlWindow*(this: var OpenGlWindow) {.cdecl,
    importcpp: "#.~OpenGl_Window()", dynlib: tkkxbase.}
proc resize*(this: var OpenGlWindow) {.cdecl, importcpp: "Resize", dynlib: tkkxbase.}
proc platformWindow*(this: var OpenGlWindow): Handle[AspectWindow] {.cdecl,
    importcpp: "PlatformWindow", dynlib: tkkxbase.}
proc width*(this: OpenGlWindow): cint {.noSideEffect, cdecl, importcpp: "Width",
                                    dynlib: tkkxbase.}
proc height*(this: OpenGlWindow): cint {.noSideEffect, cdecl, importcpp: "Height",
                                     dynlib: tkkxbase.}
proc getGlContext*(this: OpenGlWindow): Handle[OpenGlContext] {.noSideEffect, cdecl,
    importcpp: "GetGlContext", dynlib: tkkxbase.}
proc init*(this: var OpenGlWindow) {.cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc activate*(this: var OpenGlWindow): bool {.cdecl, importcpp: "Activate",
    dynlib: tkkxbase.}
proc setSwapInterval*(this: var OpenGlWindow; theToForceNoSync: bool) {.cdecl,
    importcpp: "SetSwapInterval", dynlib: tkkxbase.}