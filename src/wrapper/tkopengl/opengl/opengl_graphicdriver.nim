import ../../tkernel/tcollection/tcollection_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



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



proc newOpenGlStateCounter*(): OpenGlStateCounter {.cdecl, constructor,
    importcpp: "OpenGl_StateCounter(@)", header: "OpenGl_GraphicDriver.hxx".}
proc increment*(this: var OpenGlStateCounter): csize_t {.cdecl,
    importcpp: "Increment", header: "OpenGl_GraphicDriver.hxx".}
## ! This class defines an OpenGl graphic driver



proc newOpenGlGraphicDriver*(theDisp: Handle[AspectDisplayConnection];
                            theToInitialize: bool = true): OpenGlGraphicDriver {.
    cdecl, constructor, importcpp: "OpenGl_GraphicDriver(@)", header: "OpenGl_GraphicDriver.hxx".}
proc destroyOpenGlGraphicDriver*(this: var OpenGlGraphicDriver) {.cdecl,
    importcpp: "#.~OpenGl_GraphicDriver()", header: "OpenGl_GraphicDriver.hxx".}
proc releaseContext*(this: var OpenGlGraphicDriver) {.cdecl,
    importcpp: "ReleaseContext", header: "OpenGl_GraphicDriver.hxx".}
proc initContext*(this: var OpenGlGraphicDriver): bool {.cdecl,
    importcpp: "InitContext", header: "OpenGl_GraphicDriver.hxx".}
proc inquireLimit*(this: OpenGlGraphicDriver; theType: Graphic3dTypeOfLimit): cint {.
    noSideEffect, cdecl, importcpp: "InquireLimit", header: "OpenGl_GraphicDriver.hxx".}
proc createStructure*(this: var OpenGlGraphicDriver;
                     theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.cdecl, importcpp: "CreateStructure", header: "OpenGl_GraphicDriver.hxx".}
proc removeStructure*(this: var OpenGlGraphicDriver;
                     theCStructure: var Handle[Graphic3dCStructure]) {.cdecl,
    importcpp: "RemoveStructure", header: "OpenGl_GraphicDriver.hxx".}
proc createView*(this: var OpenGlGraphicDriver;
                theMgr: Handle[Graphic3dStructureManager]): Handle[Graphic3dCView] {.
    cdecl, importcpp: "CreateView", header: "OpenGl_GraphicDriver.hxx".}
proc removeView*(this: var OpenGlGraphicDriver; theView: Handle[Graphic3dCView]) {.
    cdecl, importcpp: "RemoveView", header: "OpenGl_GraphicDriver.hxx".}
proc createRenderWindow*(this: var OpenGlGraphicDriver;
                        theWindow: Handle[AspectWindow];
                        theContext: AspectRenderingContext): Handle[OpenGlWindow] {.
    cdecl, importcpp: "CreateRenderWindow", header: "OpenGl_GraphicDriver.hxx".}
proc textSize*(this: OpenGlGraphicDriver; theView: Handle[Graphic3dCView];
              theText: cstring; theHeight: StandardShortReal;
              theWidth: var StandardShortReal; theAscent: var StandardShortReal;
              theDescent: var StandardShortReal) {.noSideEffect, cdecl,
    importcpp: "TextSize", header: "OpenGl_GraphicDriver.hxx".}
proc defaultTextHeight*(this: OpenGlGraphicDriver): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "DefaultTextHeight", header: "OpenGl_GraphicDriver.hxx".}
proc viewExists*(this: var OpenGlGraphicDriver; theWindow: Handle[AspectWindow];
                theView: var Handle[Graphic3dCView]): bool {.cdecl,
    importcpp: "ViewExists", header: "OpenGl_GraphicDriver.hxx".}
proc insertLayerBefore*(this: var OpenGlGraphicDriver;
                       theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerBefore", header: "OpenGl_GraphicDriver.hxx".}
proc insertLayerAfter*(this: var OpenGlGraphicDriver;
                      theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerAfter", header: "OpenGl_GraphicDriver.hxx".}
proc removeZLayer*(this: var OpenGlGraphicDriver; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "RemoveZLayer", header: "OpenGl_GraphicDriver.hxx".}
proc setZLayerSettings*(this: var OpenGlGraphicDriver;
                       theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetZLayerSettings", header: "OpenGl_GraphicDriver.hxx".}
proc options*(this: OpenGlGraphicDriver): OpenGlCaps {.noSideEffect, cdecl,
    importcpp: "Options", header: "OpenGl_GraphicDriver.hxx".}
proc changeOptions*(this: var OpenGlGraphicDriver): var OpenGlCaps {.cdecl,
    importcpp: "ChangeOptions", header: "OpenGl_GraphicDriver.hxx".}
proc setBuffersNoSwap*(this: var OpenGlGraphicDriver; theIsNoSwap: bool) {.cdecl,
    importcpp: "SetBuffersNoSwap", header: "OpenGl_GraphicDriver.hxx".}
proc enableVBO*(this: var OpenGlGraphicDriver; theToTurnOn: bool) {.cdecl,
    importcpp: "EnableVBO", header: "OpenGl_GraphicDriver.hxx".}
proc memoryInfo*(this: OpenGlGraphicDriver; theFreeBytes: var csize_t;
                theInfo: var TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "MemoryInfo", header: "OpenGl_GraphicDriver.hxx".}
proc getSharedContext*(this: OpenGlGraphicDriver; theBound: bool = false): Handle[
    OpenGlContext] {.noSideEffect, cdecl, importcpp: "GetSharedContext",
                    header: "OpenGl_GraphicDriver.hxx".}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlDisplay*(this: OpenGlGraphicDriver): AspectDisplay {.noSideEffect,
      cdecl, importcpp: "getRawGlDisplay", header: "OpenGl_GraphicDriver.hxx".}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlContext*(this: OpenGlGraphicDriver): AspectRenderingContext {.
      noSideEffect, cdecl, importcpp: "getRawGlContext", header: "OpenGl_GraphicDriver.hxx".}
when defined(have_Egl) or defined(have_Gles2) or defined(occt_Uwp) or
    defined(android) or defined(qnx) or defined(emscripten):
  proc getRawGlConfig*(this: OpenGlGraphicDriver): pointer {.noSideEffect, cdecl,
      importcpp: "getRawGlConfig", header: "OpenGl_GraphicDriver.hxx".}
proc setDeviceLost*(this: var OpenGlGraphicDriver) {.cdecl,
    importcpp: "setDeviceLost", header: "OpenGl_GraphicDriver.hxx".}
proc getStateCounter*(this: OpenGlGraphicDriver): ptr OpenGlStateCounter {.
    noSideEffect, cdecl, importcpp: "GetStateCounter", header: "OpenGl_GraphicDriver.hxx".}
proc getNextPrimitiveArrayUID*(this: OpenGlGraphicDriver): csize_t {.noSideEffect,
    cdecl, importcpp: "GetNextPrimitiveArrayUID", header: "OpenGl_GraphicDriver.hxx".}


