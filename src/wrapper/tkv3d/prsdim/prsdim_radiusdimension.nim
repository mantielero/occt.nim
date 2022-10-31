import prsdim_types
import ../../tkmath/gp/gp_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkbrep/topods/topods_types



##  Copyright (c) 1995-1999 Matra Datavision
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





proc newPrsDimRadiusDimension*(theCircle: CircObj): PrsDimRadiusDimension {.cdecl,
    constructor, importcpp: "PrsDim_RadiusDimension(@)", header: "PrsDim_RadiusDimension.hxx".}
proc newPrsDimRadiusDimension*(theCircle: CircObj; theAnchorPoint: PntObj): PrsDimRadiusDimension {.
    cdecl, constructor, importcpp: "PrsDim_RadiusDimension(@)", header: "PrsDim_RadiusDimension.hxx".}
proc newPrsDimRadiusDimension*(theShape: TopoDS_Shape): PrsDimRadiusDimension {.
    cdecl, constructor, importcpp: "PrsDim_RadiusDimension(@)", header: "PrsDim_RadiusDimension.hxx".}
proc circle*(this: PrsDimRadiusDimension): CircObj {.noSideEffect, cdecl,
    importcpp: "Circle", header: "PrsDim_RadiusDimension.hxx".}
proc anchorPoint*(this: PrsDimRadiusDimension): PntObj {.noSideEffect, cdecl,
    importcpp: "AnchorPoint", header: "PrsDim_RadiusDimension.hxx".}
proc shape*(this: PrsDimRadiusDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theCircle: CircObj) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theCircle: CircObj;
                         theAnchorPoint: PntObj; theHasAnchor: bool = true) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theShape: TopoDS_Shape) {.
    cdecl, importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theShape: TopoDS_Shape;
                         theAnchorPoint: PntObj; theHasAnchor: bool = true) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc getDisplayUnits*(this: PrsDimRadiusDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetDisplayUnits", header: "PrsDim_RadiusDimension.hxx".}
proc getModelUnits*(this: PrsDimRadiusDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetModelUnits", header: "PrsDim_RadiusDimension.hxx".}
proc setDisplayUnits*(this: var PrsDimRadiusDimension;
                     theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisplayUnits", header: "PrsDim_RadiusDimension.hxx".}
proc setModelUnits*(this: var PrsDimRadiusDimension;
                   theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetModelUnits", header: "PrsDim_RadiusDimension.hxx".}
proc setTextPosition*(this: var PrsDimRadiusDimension; theTextPos: PntObj) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_RadiusDimension.hxx".}
proc getTextPosition*(this: PrsDimRadiusDimension): PntObj {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_RadiusDimension.hxx".}

