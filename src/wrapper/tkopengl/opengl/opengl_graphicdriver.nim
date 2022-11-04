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


proc newOpenGlStateCounter*(): OpenGlStateCounter {.cdecl, constructor,
    importcpp: "OpenGl_StateCounter(@)", dynlib: tkkxbase.}
proc increment*(this: var OpenGlStateCounter): csize_t {.cdecl,
    importcpp: "Increment", dynlib: tkkxbase.}
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
    ## !< indicates that shared context has been created within OpenGl_GraphicDriver
    when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
        defined(android) or defined(qnx) or defined(emscripten):
      discard
    when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
        defined(android) or defined(qnx) or defined(emscripten):
      discard
    when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
        defined(android) or defined(qnx) or defined(emscripten):
      discard
    ## !< State counter for OpenGl structures.
    ## !< Unique ID counter for primitive arrays.


proc newOpenGlGraphicDriver*(theDisp: Handle[AspectDisplayConnection];
                            theToInitialize: bool = true): OpenGlGraphicDriver {.
    cdecl, constructor, importcpp: "OpenGl_GraphicDriver(@)", dynlib: tkkxbase.}
proc destroyOpenGlGraphicDriver*(this: var OpenGlGraphicDriver) {.cdecl,
    importcpp: "#.~OpenGl_GraphicDriver()", dynlib: tkkxbase.}
proc releaseContext*(this: var OpenGlGraphicDriver) {.cdecl,
    importcpp: "ReleaseContext", dynlib: tkkxbase.}
proc initContext*(this: var OpenGlGraphicDriver): bool {.cdecl,
    importcpp: "InitContext", dynlib: tkkxbase.}
proc inquireLimit*(this: OpenGlGraphicDriver; theType: Graphic3dTypeOfLimit): cint {.
    noSideEffect, cdecl, importcpp: "InquireLimit", dynlib: tkkxbase.}
proc createStructure*(this: var OpenGlGraphicDriver;
                     theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.cdecl, importcpp: "CreateStructure", dynlib: tkkxbase.}
proc removeStructure*(this: var OpenGlGraphicDriver;
                     theCStructure: var Handle[Graphic3dCStructure]) {.cdecl,
    importcpp: "RemoveStructure", dynlib: tkkxbase.}
proc createView*(this: var OpenGlGraphicDriver;
                theMgr: Handle[Graphic3dStructureManager]): Handle[Graphic3dCView] {.
    cdecl, importcpp: "CreateView", dynlib: tkkxbase.}
proc removeView*(this: var OpenGlGraphicDriver; theView: Handle[Graphic3dCView]) {.
    cdecl, importcpp: "RemoveView", dynlib: tkkxbase.}
proc createRenderWindow*(this: var OpenGlGraphicDriver;
                        theWindow: Handle[AspectWindow];
                        theContext: AspectRenderingContext): Handle[OpenGlWindow] {.
    cdecl, importcpp: "CreateRenderWindow", dynlib: tkkxbase.}
proc textSize*(this: OpenGlGraphicDriver; theView: Handle[Graphic3dCView];
              theText: cstring; theHeight: StandardShortReal;
              theWidth: var StandardShortReal; theAscent: var StandardShortReal;
              theDescent: var StandardShortReal) {.noSideEffect, cdecl,
    importcpp: "TextSize", dynlib: tkkxbase.}
proc defaultTextHeight*(this: OpenGlGraphicDriver): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "DefaultTextHeight", dynlib: tkkxbase.}
proc viewExists*(this: var OpenGlGraphicDriver; theWindow: Handle[AspectWindow];
                theView: var Handle[Graphic3dCView]): bool {.cdecl,
    importcpp: "ViewExists", dynlib: tkkxbase.}
proc insertLayerBefore*(this: var OpenGlGraphicDriver;
                       theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerBefore", dynlib: tkkxbase.}
proc insertLayerAfter*(this: var OpenGlGraphicDriver;
                      theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerAfter", dynlib: tkkxbase.}
proc removeZLayer*(this: var OpenGlGraphicDriver; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "RemoveZLayer", dynlib: tkkxbase.}
proc setZLayerSettings*(this: var OpenGlGraphicDriver;
                       theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetZLayerSettings", dynlib: tkkxbase.}
proc options*(this: OpenGlGraphicDriver): OpenGlCaps {.noSideEffect, cdecl,
    importcpp: "Options", dynlib: tkkxbase.}
proc changeOptions*(this: var OpenGlGraphicDriver): var OpenGlCaps {.cdecl,
    importcpp: "ChangeOptions", dynlib: tkkxbase.}
proc setBuffersNoSwap*(this: var OpenGlGraphicDriver; theIsNoSwap: bool) {.cdecl,
    importcpp: "SetBuffersNoSwap", dynlib: tkkxbase.}
proc enableVBO*(this: var OpenGlGraphicDriver; theToTurnOn: bool) {.cdecl,
    importcpp: "EnableVBO", dynlib: tkkxbase.}
proc memoryInfo*(this: OpenGlGraphicDriver; theFreeBytes: var csize_t;
                theInfo: var TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "MemoryInfo", dynlib: tkkxbase.}
proc getSharedContext*(this: OpenGlGraphicDriver; theBound: bool = false): Handle[
    OpenGlContext] {.noSideEffect, cdecl, importcpp: "GetSharedContext",
                    dynlib: tkkxbase.}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlDisplay*(this: OpenGlGraphicDriver): AspectDisplay {.noSideEffect,
      cdecl, importcpp: "getRawGlDisplay", dynlib: tkkxbase.}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlContext*(this: OpenGlGraphicDriver): AspectRenderingContext {.
      noSideEffect, cdecl, importcpp: "getRawGlContext", dynlib: tkkxbase.}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlConfig*(this: OpenGlGraphicDriver): pointer {.noSideEffect, cdecl,
      importcpp: "getRawGlConfig", dynlib: tkkxbase.}
proc setDeviceLost*(this: var OpenGlGraphicDriver) {.cdecl,
    importcpp: "setDeviceLost", dynlib: tkkxbase.}
proc getStateCounter*(this: OpenGlGraphicDriver): ptr OpenGlStateCounter {.
    noSideEffect, cdecl, importcpp: "GetStateCounter", dynlib: tkkxbase.}
proc getNextPrimitiveArrayUID*(this: OpenGlGraphicDriver): csize_t {.noSideEffect,
    cdecl, importcpp: "GetNextPrimitiveArrayUID", dynlib: tkkxbase.}
type
  HandleOpenGlGraphicDriver* = Handle[OpenGlGraphicDriver]
