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

import
  ../Graphic3d/Graphic3d_GraphicDriver, ../Aspect/Aspect_Display,
  ../Aspect/Aspect_DisplayConnection, ../Aspect/Aspect_RenderingContext,
  ../Graphic3d/Graphic3d_CView, ../Graphic3d/Graphic3d_CStructure,
  ../NCollection/NCollection_DataMap, OpenGl_Context

discard "forward decl of Aspect_Window"
discard "forward decl of Quantity_Color"
discard "forward decl of OpenGl_Structure"
discard "forward decl of OpenGl_View"
discard "forward decl of OpenGl_Window"
type
  OpenGl_StateCounter* {.importcpp: "OpenGl_StateCounter",
                        header: "OpenGl_GraphicDriver.hxx", bycopy.} = object


proc constructOpenGl_StateCounter*(): OpenGl_StateCounter {.constructor,
    importcpp: "OpenGl_StateCounter(@)", header: "OpenGl_GraphicDriver.hxx".}
proc Increment*(this: var OpenGl_StateCounter): Standard_Size {.
    importcpp: "Increment", header: "OpenGl_GraphicDriver.hxx".}
## ! This class defines an OpenGl graphic driver

type
  OpenGl_GraphicDriver* {.importcpp: "OpenGl_GraphicDriver",
                         header: "OpenGl_GraphicDriver.hxx", bycopy.} = object of Graphic3d_GraphicDriver ##
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
    ## !< indicates that shared context has been created within OpenGl_GraphicDriver
    when defined(HAVE_EGL) or defined(HAVE_GLES2) or defined(OCCT_UWP) or
        defined(__ANDROID__) or defined(__QNX__) or defined(__EMSCRIPTEN__):
      discard
    when defined(HAVE_EGL) or defined(HAVE_GLES2) or defined(OCCT_UWP) or
        defined(__ANDROID__) or defined(__QNX__) or defined(__EMSCRIPTEN__):
      discard
    when defined(HAVE_EGL) or defined(HAVE_GLES2) or defined(OCCT_UWP) or
        defined(__ANDROID__) or defined(__QNX__) or defined(__EMSCRIPTEN__):
      discard
    ## !< State counter for OpenGl structures.
    ## !< Unique ID counter for primitive arrays.

  OpenGl_GraphicDriverbase_type* = Graphic3d_GraphicDriver

proc get_type_name*(): cstring {.importcpp: "OpenGl_GraphicDriver::get_type_name(@)",
                              header: "OpenGl_GraphicDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_GraphicDriver::get_type_descriptor(@)",
    header: "OpenGl_GraphicDriver.hxx".}
proc DynamicType*(this: OpenGl_GraphicDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_GraphicDriver.hxx".}
proc constructOpenGl_GraphicDriver*(theDisp: handle[Aspect_DisplayConnection];
    theToInitialize: Standard_Boolean = Standard_True): OpenGl_GraphicDriver {.
    constructor, importcpp: "OpenGl_GraphicDriver(@)",
    header: "OpenGl_GraphicDriver.hxx".}
proc destroyOpenGl_GraphicDriver*(this: var OpenGl_GraphicDriver) {.
    importcpp: "#.~OpenGl_GraphicDriver()", header: "OpenGl_GraphicDriver.hxx".}
proc ReleaseContext*(this: var OpenGl_GraphicDriver) {.importcpp: "ReleaseContext",
    header: "OpenGl_GraphicDriver.hxx".}
proc InitContext*(this: var OpenGl_GraphicDriver): Standard_Boolean {.
    importcpp: "InitContext", header: "OpenGl_GraphicDriver.hxx".}
## !!!Ignored construct:  # defined ( HAVE_EGL ) || defined ( HAVE_GLES2 ) || defined ( OCCT_UWP ) || defined ( __ANDROID__ ) || defined ( __QNX__ ) || defined ( __EMSCRIPTEN__ ) [NewLine] ! Initialize default OpenGL context using existing one.
## ! @param theEglDisplay EGL connection to the Display
## ! @param theEglContext EGL rendering context
## ! @param theEglConfig  EGL configuration Standard_Boolean InitEglContext ( Aspect_Display theEglDisplay , Aspect_RenderingContext theEglContext , void * theEglConfig ) ;
## Error: identifier expected, but got: ! Initialize default OpenGL context using existing one.
## ! @param theEglDisplay EGL connection to the Display
## ! @param theEglContext EGL rendering context
## ! @param theEglConfig  EGL configuration!!!

proc InquireLimit*(this: OpenGl_GraphicDriver; theType: Graphic3d_TypeOfLimit): Standard_Integer {.
    noSideEffect, importcpp: "InquireLimit", header: "OpenGl_GraphicDriver.hxx".}
proc CreateStructure*(this: var OpenGl_GraphicDriver;
                     theManager: handle[Graphic3d_StructureManager]): handle[
    Graphic3d_CStructure] {.importcpp: "CreateStructure",
                           header: "OpenGl_GraphicDriver.hxx".}
proc RemoveStructure*(this: var OpenGl_GraphicDriver;
                     theCStructure: var handle[Graphic3d_CStructure]) {.
    importcpp: "RemoveStructure", header: "OpenGl_GraphicDriver.hxx".}
proc CreateView*(this: var OpenGl_GraphicDriver;
                theMgr: handle[Graphic3d_StructureManager]): handle[
    Graphic3d_CView] {.importcpp: "CreateView", header: "OpenGl_GraphicDriver.hxx".}
proc RemoveView*(this: var OpenGl_GraphicDriver; theView: handle[Graphic3d_CView]) {.
    importcpp: "RemoveView", header: "OpenGl_GraphicDriver.hxx".}
proc CreateRenderWindow*(this: var OpenGl_GraphicDriver;
                        theWindow: handle[Aspect_Window];
                        theContext: Aspect_RenderingContext): handle[OpenGl_Window] {.
    importcpp: "CreateRenderWindow", header: "OpenGl_GraphicDriver.hxx".}
proc TextSize*(this: OpenGl_GraphicDriver; theView: handle[Graphic3d_CView];
              theText: Standard_CString; theHeight: Standard_ShortReal;
              theWidth: var Standard_ShortReal; theAscent: var Standard_ShortReal;
              theDescent: var Standard_ShortReal) {.noSideEffect,
    importcpp: "TextSize", header: "OpenGl_GraphicDriver.hxx".}
proc DefaultTextHeight*(this: OpenGl_GraphicDriver): Standard_ShortReal {.
    noSideEffect, importcpp: "DefaultTextHeight",
    header: "OpenGl_GraphicDriver.hxx".}
proc ViewExists*(this: var OpenGl_GraphicDriver; theWindow: handle[Aspect_Window];
                theView: var handle[Graphic3d_CView]): Standard_Boolean {.
    importcpp: "ViewExists", header: "OpenGl_GraphicDriver.hxx".}
proc InsertLayerBefore*(this: var OpenGl_GraphicDriver;
                       theNewLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings;
                       theLayerAfter: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerBefore", header: "OpenGl_GraphicDriver.hxx".}
proc InsertLayerAfter*(this: var OpenGl_GraphicDriver;
                      theNewLayerId: Graphic3d_ZLayerId;
                      theSettings: Graphic3d_ZLayerSettings;
                      theLayerBefore: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerAfter", header: "OpenGl_GraphicDriver.hxx".}
proc RemoveZLayer*(this: var OpenGl_GraphicDriver; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "RemoveZLayer", header: "OpenGl_GraphicDriver.hxx".}
proc SetZLayerSettings*(this: var OpenGl_GraphicDriver;
                       theLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "OpenGl_GraphicDriver.hxx".}
proc Options*(this: OpenGl_GraphicDriver): OpenGl_Caps {.noSideEffect,
    importcpp: "Options", header: "OpenGl_GraphicDriver.hxx".}
proc ChangeOptions*(this: var OpenGl_GraphicDriver): var OpenGl_Caps {.
    importcpp: "ChangeOptions", header: "OpenGl_GraphicDriver.hxx".}
proc SetBuffersNoSwap*(this: var OpenGl_GraphicDriver; theIsNoSwap: Standard_Boolean) {.
    importcpp: "SetBuffersNoSwap", header: "OpenGl_GraphicDriver.hxx".}
proc EnableVBO*(this: var OpenGl_GraphicDriver; theToTurnOn: Standard_Boolean) {.
    importcpp: "EnableVBO", header: "OpenGl_GraphicDriver.hxx".}
proc MemoryInfo*(this: OpenGl_GraphicDriver; theFreeBytes: var Standard_Size;
                theInfo: var TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "MemoryInfo", header: "OpenGl_GraphicDriver.hxx".}
proc GetSharedContext*(this: OpenGl_GraphicDriver; theBound: bool = false): handle[
    OpenGl_Context] {.noSideEffect, importcpp: "GetSharedContext",
                     header: "OpenGl_GraphicDriver.hxx".}
when defined(HAVE_EGL) or defined(HAVE_GLES2) or defined(OCCT_UWP) or
    defined(__ANDROID__) or defined(__QNX__) or defined(__EMSCRIPTEN__):
  proc getRawGlDisplay*(this: OpenGl_GraphicDriver): Aspect_Display {.noSideEffect,
      importcpp: "getRawGlDisplay", header: "OpenGl_GraphicDriver.hxx".}
when defined(HAVE_EGL) or defined(HAVE_GLES2) or defined(OCCT_UWP) or
    defined(__ANDROID__) or defined(__QNX__) or defined(__EMSCRIPTEN__):
  proc getRawGlContext*(this: OpenGl_GraphicDriver): Aspect_RenderingContext {.
      noSideEffect, importcpp: "getRawGlContext",
      header: "OpenGl_GraphicDriver.hxx".}
when defined(HAVE_EGL) or defined(HAVE_GLES2) or defined(OCCT_UWP) or
    defined(__ANDROID__) or defined(__QNX__) or defined(__EMSCRIPTEN__):
  proc getRawGlConfig*(this: OpenGl_GraphicDriver): pointer {.noSideEffect,
      importcpp: "getRawGlConfig", header: "OpenGl_GraphicDriver.hxx".}
proc setDeviceLost*(this: var OpenGl_GraphicDriver) {.importcpp: "setDeviceLost",
    header: "OpenGl_GraphicDriver.hxx".}
proc GetStateCounter*(this: OpenGl_GraphicDriver): ptr OpenGl_StateCounter {.
    noSideEffect, importcpp: "GetStateCounter", header: "OpenGl_GraphicDriver.hxx".}
proc GetNextPrimitiveArrayUID*(this: OpenGl_GraphicDriver): Standard_Size {.
    noSideEffect, importcpp: "GetNextPrimitiveArrayUID",
    header: "OpenGl_GraphicDriver.hxx".}
discard "forward decl of OpenGl_GraphicDriver"
type
  Handle_OpenGl_GraphicDriver* = handle[OpenGl_GraphicDriver]
