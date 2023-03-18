import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types
import ../gp/gp_types


##  Created on: 2016-11-29
##  Created by: Irina KRYLOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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





proc newXCAFDocClippingPlaneTool*(): XCAFDocClippingPlaneTool {.cdecl, constructor,
    importcpp: "XCAFDoc_ClippingPlaneTool(@)",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocClippingPlaneTool] {.cdecl,
    importcpp: "XCAFDoc_ClippingPlaneTool::Set(@)",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc getID*(): StandardGUID {.cdecl,
                           importcpp: "XCAFDoc_ClippingPlaneTool::GetID(@)",
                           header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc baseLabel*(this: XCAFDocClippingPlaneTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc isClippingPlane*(this: XCAFDocClippingPlaneTool; theLabel: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "IsClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc getClippingPlane*(this: XCAFDocClippingPlaneTool; theLabel: TDF_Label;
                      thePlane: var gp_Pln; theName: var TCollectionExtendedString;
                      theCapping: var bool): bool {.noSideEffect, cdecl,
    importcpp: "GetClippingPlane", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc getClippingPlane*(this: XCAFDocClippingPlaneTool; theLabel: TDF_Label;
                      thePlane: var gp_Pln;
                      theName: var Handle[TCollectionHAsciiString];
                      theCapping: var bool): bool {.noSideEffect, cdecl,
    importcpp: "GetClippingPlane", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc addClippingPlane*(this: XCAFDocClippingPlaneTool; thePlane: gp_Pln;
                      theName: TCollectionExtendedString; theCapping: bool): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc addClippingPlane*(this: XCAFDocClippingPlaneTool; thePlane: gp_Pln;
                      theName: Handle[TCollectionHAsciiString]; theCapping: bool): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc addClippingPlane*(this: XCAFDocClippingPlaneTool; thePlane: gp_Pln;
                      theName: TCollectionExtendedString): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc addClippingPlane*(this: XCAFDocClippingPlaneTool; thePlane: gp_Pln;
                      theName: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc removeClippingPlane*(this: XCAFDocClippingPlaneTool; theLabel: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "RemoveClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc getClippingPlanes*(this: XCAFDocClippingPlaneTool;
                       labels: var TDF_LabelSequence) {.noSideEffect, cdecl,
    importcpp: "GetClippingPlanes", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc updateClippingPlane*(this: XCAFDocClippingPlaneTool; theLabelL: TDF_Label;
                         thePlane: gp_Pln; theName: TCollectionExtendedString) {.
    noSideEffect, cdecl, importcpp: "UpdateClippingPlane",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc setCapping*(this: var XCAFDocClippingPlaneTool; theClippingPlaneL: TDF_Label;
                theCapping: bool) {.cdecl, importcpp: "SetCapping",
                                  header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc getCapping*(this: XCAFDocClippingPlaneTool; theClippingPlaneL: TDF_Label): bool {.
    noSideEffect, cdecl, importcpp: "GetCapping",
    header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc getCapping*(this: XCAFDocClippingPlaneTool; theClippingPlaneL: TDF_Label;
                theCapping: var bool): bool {.noSideEffect, cdecl,
    importcpp: "GetCapping", header: "XCAFDoc_ClippingPlaneTool.hxx".}
proc id*(this: XCAFDocClippingPlaneTool): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_ClippingPlaneTool.hxx".}

