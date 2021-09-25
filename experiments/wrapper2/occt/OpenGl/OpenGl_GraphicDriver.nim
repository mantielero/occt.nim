##  Created on: 2011-10-20
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

discard "forward decl of Aspect_Window"
discard "forward decl of Quantity_Color"
discard "forward decl of OpenGl_Structure"
discard "forward decl of OpenGl_View"
discard "forward decl of OpenGl_Window"
type
  OpenGlStateCounter* {.importcpp: "OpenGl_StateCounter",
                       header: "OpenGl_GraphicDriver.hxx", bycopy.} = object


proc constructOpenGlStateCounter*(): OpenGlStateCounter {.constructor,
    importcpp: "OpenGl_StateCounter(@)", header: "OpenGl_GraphicDriver.hxx".}
proc increment*(this: var OpenGlStateCounter): StandardSize {.importcpp: "Increment",
    header: "OpenGl_GraphicDriver.hxx".}
## ! This class defines an OpenGl graphic driver

type
  OpenGlGraphicDriver* {.importcpp: "OpenGl_GraphicDriver",
                        header: "OpenGl_GraphicDriver.hxx", bycopy.} = object of Graphic3dGraphicDriver ##
                                                                                                 ## !
                                                                                                 ## Constructor.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theDisp
                                                                                                 ## connection
                                                                                                 ## to
                                                                                                 ## display,
                                                                                                 ## required
                                                                                                 ## on
                                                                                                 ## Linux
                                                                                                 ## but
                                                                                                 ## optional
                                                                                                 ## on
                                                                                                 ## other
                                                                                                 ## systems
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theToInitialize
                                                                                                 ## perform
                                                                                                 ## initialization
                                                                                                 ## of
                                                                                                 ## default
                                                                                                 ## OpenGL
                                                                                                 ## context
                                                                                                 ## on
                                                                                                 ## construction
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Adds
                                                                                                 ## a
                                                                                                 ## layer
                                                                                                 ## to
                                                                                                 ## all
                                                                                                 ## views.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theLayerId
                                                                                                 ## [in]
                                                                                                 ## id
                                                                                                 ## of
                                                                                                 ## new
                                                                                                 ## layer,
                                                                                                 ## should
                                                                                                 ## be
                                                                                                 ## >
                                                                                                 ## 0
                                                                                                 ## (negative
                                                                                                 ## values
                                                                                                 ## are
                                                                                                 ## reserved
                                                                                                 ## for
                                                                                                 ## default
                                                                                                 ## layers).
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theSettings
                                                                                                 ## [in]
                                                                                                 ## new
                                                                                                 ## layer
                                                                                                 ## settings
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theLayerAfter
                                                                                                 ## [in]
                                                                                                 ## id
                                                                                                 ## of
                                                                                                 ## layer
                                                                                                 ## to
                                                                                                 ## append
                                                                                                 ## new
                                                                                                 ## layer
                                                                                                 ## before
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @return
                                                                                                 ## the
                                                                                                 ## visualization
                                                                                                 ## options
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Method
                                                                                                 ## to
                                                                                                 ## retrieve
                                                                                                 ## valid
                                                                                                 ## GL
                                                                                                 ## context.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Could
                                                                                                 ## return
                                                                                                 ## NULL-handle
                                                                                                 ## if
                                                                                                 ## no
                                                                                                 ## window
                                                                                                 ## created
                                                                                                 ## by
                                                                                                 ## this
                                                                                                 ## driver.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theBound
                                                                                                 ## if
                                                                                                 ## TRUE
                                                                                                 ## then
                                                                                                 ## currently
                                                                                                 ## bound
                                                                                                 ## context
                                                                                                 ## will
                                                                                                 ## be
                                                                                                 ## returned,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## any
                                                                                                 ## context
                                                                                                 ## will
                                                                                                 ## be
                                                                                                 ## returned
                                                                                                 ## otherwise
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## State
                                                                                                 ## counter
                                                                                                 ## for
                                                                                                 ## OpenGl
                                                                                                 ## structures.
#     ## !< indicates that shared context has been created within OpenGl_GraphicDriver
#     when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
#         defined(android) or defined(qnx) or defined(emscripten):
#       discard
#     when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
#         defined(android) or defined(qnx) or defined(emscripten):
#       discard
#     when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
#         defined(android) or defined(qnx) or defined(emscripten):
#       discard
#     ## !< State counter for OpenGl structures.
#     ## !< Unique ID counter for primitive arrays.

  OpenGlGraphicDriverbaseType* = Graphic3dGraphicDriver

proc getTypeName*(): cstring {.importcpp: "OpenGl_GraphicDriver::get_type_name(@)",
                            header: "OpenGl_GraphicDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_GraphicDriver::get_type_descriptor(@)",
    header: "OpenGl_GraphicDriver.hxx".}
proc dynamicType*(this: OpenGlGraphicDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_GraphicDriver.hxx".}
proc constructOpenGlGraphicDriver*(theDisp: Handle[AspectDisplayConnection];
                                  theToInitialize: bool = true): OpenGlGraphicDriver {.
    constructor, importcpp: "OpenGl_GraphicDriver(@)",
    header: "OpenGl_GraphicDriver.hxx".}
proc destroyOpenGlGraphicDriver*(this: var OpenGlGraphicDriver) {.
    importcpp: "#.~OpenGl_GraphicDriver()", header: "OpenGl_GraphicDriver.hxx".}
proc releaseContext*(this: var OpenGlGraphicDriver) {.importcpp: "ReleaseContext",
    header: "OpenGl_GraphicDriver.hxx".}
proc initContext*(this: var OpenGlGraphicDriver): bool {.importcpp: "InitContext",
    header: "OpenGl_GraphicDriver.hxx".}
## !!!Ignored construct:  # defined ( HAVE_EGL ) || defined ( HAVE_GLES2 ) || defined ( OCCT_UWP ) || defined ( __ANDROID__ ) || defined ( __QNX__ ) || defined ( __EMSCRIPTEN__ ) [NewLine] ! Initialize default OpenGL context using existing one.
## ! @param theEglDisplay EGL connection to the Display
## ! @param theEglContext EGL rendering context
## ! @param theEglConfig  EGL configuration Standard_Boolean InitEglContext ( Aspect_Display theEglDisplay , Aspect_RenderingContext theEglContext , void * theEglConfig ) ;
## Error: identifier expected, but got: ! Initialize default OpenGL context using existing one.
## ! @param theEglDisplay EGL connection to the Display
## ! @param theEglContext EGL rendering context
## ! @param theEglConfig  EGL configuration!!!

proc inquireLimit*(this: OpenGlGraphicDriver; theType: Graphic3dTypeOfLimit): int {.
    noSideEffect, importcpp: "InquireLimit", header: "OpenGl_GraphicDriver.hxx".}
proc createStructure*(this: var OpenGlGraphicDriver;
                     theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.importcpp: "CreateStructure",
                          header: "OpenGl_GraphicDriver.hxx".}
proc removeStructure*(this: var OpenGlGraphicDriver;
                     theCStructure: var Handle[Graphic3dCStructure]) {.
    importcpp: "RemoveStructure", header: "OpenGl_GraphicDriver.hxx".}
proc createView*(this: var OpenGlGraphicDriver;
                theMgr: Handle[Graphic3dStructureManager]): Handle[Graphic3dCView] {.
    importcpp: "CreateView", header: "OpenGl_GraphicDriver.hxx".}
proc removeView*(this: var OpenGlGraphicDriver; theView: Handle[Graphic3dCView]) {.
    importcpp: "RemoveView", header: "OpenGl_GraphicDriver.hxx".}
proc createRenderWindow*(this: var OpenGlGraphicDriver;
                        theWindow: Handle[AspectWindow];
                        theContext: AspectRenderingContext): Handle[OpenGlWindow] {.
    importcpp: "CreateRenderWindow", header: "OpenGl_GraphicDriver.hxx".}
proc textSize*(this: OpenGlGraphicDriver; theView: Handle[Graphic3dCView];
              theText: StandardCString; theHeight: StandardShortReal;
              theWidth: var StandardShortReal; theAscent: var StandardShortReal;
              theDescent: var StandardShortReal) {.noSideEffect,
    importcpp: "TextSize", header: "OpenGl_GraphicDriver.hxx".}
proc defaultTextHeight*(this: OpenGlGraphicDriver): StandardShortReal {.
    noSideEffect, importcpp: "DefaultTextHeight",
    header: "OpenGl_GraphicDriver.hxx".}
proc viewExists*(this: var OpenGlGraphicDriver; theWindow: Handle[AspectWindow];
                theView: var Handle[Graphic3dCView]): bool {.
    importcpp: "ViewExists", header: "OpenGl_GraphicDriver.hxx".}
proc insertLayerBefore*(this: var OpenGlGraphicDriver;
                       theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.
    importcpp: "InsertLayerBefore", header: "OpenGl_GraphicDriver.hxx".}
proc insertLayerAfter*(this: var OpenGlGraphicDriver;
                      theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.
    importcpp: "InsertLayerAfter", header: "OpenGl_GraphicDriver.hxx".}
proc removeZLayer*(this: var OpenGlGraphicDriver; theLayerId: Graphic3dZLayerId) {.
    importcpp: "RemoveZLayer", header: "OpenGl_GraphicDriver.hxx".}
proc setZLayerSettings*(this: var OpenGlGraphicDriver;
                       theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "OpenGl_GraphicDriver.hxx".}
proc options*(this: OpenGlGraphicDriver): OpenGlCaps {.noSideEffect,
    importcpp: "Options", header: "OpenGl_GraphicDriver.hxx".}
proc changeOptions*(this: var OpenGlGraphicDriver): var OpenGlCaps {.
    importcpp: "ChangeOptions", header: "OpenGl_GraphicDriver.hxx".}
proc setBuffersNoSwap*(this: var OpenGlGraphicDriver; theIsNoSwap: bool) {.
    importcpp: "SetBuffersNoSwap", header: "OpenGl_GraphicDriver.hxx".}
proc enableVBO*(this: var OpenGlGraphicDriver; theToTurnOn: bool) {.
    importcpp: "EnableVBO", header: "OpenGl_GraphicDriver.hxx".}
proc memoryInfo*(this: OpenGlGraphicDriver; theFreeBytes: var StandardSize;
                theInfo: var TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "MemoryInfo", header: "OpenGl_GraphicDriver.hxx".}
proc getSharedContext*(this: OpenGlGraphicDriver; theBound: bool = false): Handle[
    OpenGlContext] {.noSideEffect, importcpp: "GetSharedContext",
                    header: "OpenGl_GraphicDriver.hxx".}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlDisplay*(this: OpenGlGraphicDriver): AspectDisplay {.noSideEffect,
      importcpp: "getRawGlDisplay", header: "OpenGl_GraphicDriver.hxx".}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlContext*(this: OpenGlGraphicDriver): AspectRenderingContext {.
      noSideEffect, importcpp: "getRawGlContext",
      header: "OpenGl_GraphicDriver.hxx".}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlConfig*(this: OpenGlGraphicDriver): pointer {.noSideEffect,
      importcpp: "getRawGlConfig", header: "OpenGl_GraphicDriver.hxx".}
proc setDeviceLost*(this: var OpenGlGraphicDriver) {.importcpp: "setDeviceLost",
    header: "OpenGl_GraphicDriver.hxx".}
proc getStateCounter*(this: OpenGlGraphicDriver): ptr OpenGlStateCounter {.
    noSideEffect, importcpp: "GetStateCounter", header: "OpenGl_GraphicDriver.hxx".}
proc getNextPrimitiveArrayUID*(this: OpenGlGraphicDriver): StandardSize {.
    noSideEffect, importcpp: "GetNextPrimitiveArrayUID",
    header: "OpenGl_GraphicDriver.hxx".}
discard "forward decl of OpenGl_GraphicDriver"
type
  HandleOpenGlGraphicDriver* = Handle[OpenGlGraphicDriver]


