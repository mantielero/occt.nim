import prsdim_types
import ../gp/gp_types
import ../tcollection/tcollection_types
import ../topods/topods_types





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





proc newPrsDimRadiusDimension*(theCircle: gp_Circ): PrsDimRadiusDimension {.cdecl,
    constructor, importcpp: "PrsDim_RadiusDimension(@)", header: "PrsDim_RadiusDimension.hxx".}
proc newPrsDimRadiusDimension*(theCircle: gp_Circ; theAnchorPoint: gp_Pnt): PrsDimRadiusDimension {.
    cdecl, constructor, importcpp: "PrsDim_RadiusDimension(@)", header: "PrsDim_RadiusDimension.hxx".}
proc newPrsDimRadiusDimension*(theShape: TopoDS_Shape): PrsDimRadiusDimension {.
    cdecl, constructor, importcpp: "PrsDim_RadiusDimension(@)", header: "PrsDim_RadiusDimension.hxx".}
proc circle*(this: PrsDimRadiusDimension): gp_Circ {.noSideEffect, cdecl,
    importcpp: "Circle", header: "PrsDim_RadiusDimension.hxx".}
proc anchorPoint*(this: PrsDimRadiusDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "AnchorPoint", header: "PrsDim_RadiusDimension.hxx".}
proc shape*(this: PrsDimRadiusDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theCircle: gp_Circ) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theCircle: gp_Circ;
                         theAnchorPoint: gp_Pnt; theHasAnchor: bool = true) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theShape: TopoDS_Shape) {.
    cdecl, importcpp: "SetMeasuredGeometry", header: "PrsDim_RadiusDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimRadiusDimension; theShape: TopoDS_Shape;
                         theAnchorPoint: gp_Pnt; theHasAnchor: bool = true) {.cdecl,
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
proc setTextPosition*(this: var PrsDimRadiusDimension; theTextPos: gp_Pnt) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_RadiusDimension.hxx".}
proc getTextPosition*(this: PrsDimRadiusDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_RadiusDimension.hxx".}


