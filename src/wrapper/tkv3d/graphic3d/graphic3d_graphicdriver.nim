import ../../tkernel/tcollection/tcollection_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../../tkernel/tcolstd/tcolstd_types





##  Created on: 1997-01-28
##  Created by: CAL
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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





proc inquireLimit*(this: Graphic3dGraphicDriver; theType: Graphic3dTypeOfLimit): cint {.
    noSideEffect, cdecl, importcpp: "InquireLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc inquireLightLimit*(this: Graphic3dGraphicDriver): cint {.noSideEffect, cdecl,
    importcpp: "InquireLightLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc inquirePlaneLimit*(this: Graphic3dGraphicDriver): cint {.noSideEffect, cdecl,
    importcpp: "InquirePlaneLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc inquireViewLimit*(this: Graphic3dGraphicDriver): cint {.noSideEffect, cdecl,
    importcpp: "InquireViewLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc createStructure*(this: var Graphic3dGraphicDriver;
                     theManager: Handle[Graphic3dStructureManager]): Handle[
    Graphic3dCStructure] {.cdecl, importcpp: "CreateStructure", header: "Graphic3d_GraphicDriver.hxx".}
proc removeStructure*(this: var Graphic3dGraphicDriver;
                     theCStructure: var Handle[Graphic3dCStructure]) {.cdecl,
    importcpp: "RemoveStructure", header: "Graphic3d_GraphicDriver.hxx".}
proc createView*(this: var Graphic3dGraphicDriver;
                theMgr: Handle[Graphic3dStructureManager]): Handle[Graphic3dCView] {.
    cdecl, importcpp: "CreateView", header: "Graphic3d_GraphicDriver.hxx".}
proc removeView*(this: var Graphic3dGraphicDriver; theView: Handle[Graphic3dCView]) {.
    cdecl, importcpp: "RemoveView", header: "Graphic3d_GraphicDriver.hxx".}
proc enableVBO*(this: var Graphic3dGraphicDriver; status: bool) {.cdecl,
    importcpp: "EnableVBO", header: "Graphic3d_GraphicDriver.hxx".}
proc memoryInfo*(this: Graphic3dGraphicDriver; theFreeBytes: var csize_t;
                theInfo: var TCollectionAsciiString): bool {.noSideEffect, cdecl,
    importcpp: "MemoryInfo", header: "Graphic3d_GraphicDriver.hxx".}
proc defaultTextHeight*(this: Graphic3dGraphicDriver): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "DefaultTextHeight", header: "Graphic3d_GraphicDriver.hxx".}
proc textSize*(this: Graphic3dGraphicDriver; theView: Handle[Graphic3dCView];
              theText: cstring; theHeight: StandardShortReal;
              theWidth: var StandardShortReal; theAscent: var StandardShortReal;
              theDescent: var StandardShortReal) {.noSideEffect, cdecl,
    importcpp: "TextSize", header: "Graphic3d_GraphicDriver.hxx".}
proc insertLayerBefore*(this: var Graphic3dGraphicDriver;
                       theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerBefore", header: "Graphic3d_GraphicDriver.hxx".}
proc insertLayerAfter*(this: var Graphic3dGraphicDriver;
                      theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerAfter", header: "Graphic3d_GraphicDriver.hxx".}
proc removeZLayer*(this: var Graphic3dGraphicDriver; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "RemoveZLayer", header: "Graphic3d_GraphicDriver.hxx".}
proc zLayers*(this: Graphic3dGraphicDriver;
             theLayerSeq: var TColStdSequenceOfInteger) {.noSideEffect, cdecl,
    importcpp: "ZLayers", header: "Graphic3d_GraphicDriver.hxx".}
proc setZLayerSettings*(this: var Graphic3dGraphicDriver;
                       theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetZLayerSettings", header: "Graphic3d_GraphicDriver.hxx".}
proc zLayerSettings*(this: Graphic3dGraphicDriver; theLayerId: Graphic3dZLayerId): Graphic3dZLayerSettings {.
    noSideEffect, cdecl, importcpp: "ZLayerSettings", header: "Graphic3d_GraphicDriver.hxx".}
proc viewExists*(this: var Graphic3dGraphicDriver; theWindow: Handle[AspectWindow];
                theView: var Handle[Graphic3dCView]): bool {.cdecl,
    importcpp: "ViewExists", header: "Graphic3d_GraphicDriver.hxx".}
proc getDisplayConnection*(this: Graphic3dGraphicDriver): Handle[
    AspectDisplayConnection] {.noSideEffect, cdecl,
                              importcpp: "GetDisplayConnection", header: "Graphic3d_GraphicDriver.hxx".}
proc newIdentification*(this: var Graphic3dGraphicDriver): cint {.cdecl,
    importcpp: "NewIdentification", header: "Graphic3d_GraphicDriver.hxx".}
proc removeIdentification*(this: var Graphic3dGraphicDriver; theId: cint) {.cdecl,
    importcpp: "RemoveIdentification", header: "Graphic3d_GraphicDriver.hxx".}
proc dumpJson*(this: Graphic3dGraphicDriver; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_GraphicDriver.hxx".}


