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





proc newPrsDimDiameterDimension*(theCircle: gp_Circ): PrsDimDiameterDimension {.cdecl,
    constructor, importcpp: "PrsDim_DiameterDimension(@)", header: "PrsDim_DiameterDimension.hxx".}
proc newPrsDimDiameterDimension*(theCircle: gp_Circ; thePlane: gp_Pln): PrsDimDiameterDimension {.
    cdecl, constructor, importcpp: "PrsDim_DiameterDimension(@)", header: "PrsDim_DiameterDimension.hxx".}
proc newPrsDimDiameterDimension*(theShape: TopoDS_Shape): PrsDimDiameterDimension {.
    cdecl, constructor, importcpp: "PrsDim_DiameterDimension(@)", header: "PrsDim_DiameterDimension.hxx".}
proc newPrsDimDiameterDimension*(theShape: TopoDS_Shape; thePlane: gp_Pln): PrsDimDiameterDimension {.
    cdecl, constructor, importcpp: "PrsDim_DiameterDimension(@)", header: "PrsDim_DiameterDimension.hxx".}
proc circle*(this: PrsDimDiameterDimension): gp_Circ {.noSideEffect, cdecl,
    importcpp: "Circle", header: "PrsDim_DiameterDimension.hxx".}
proc anchorPoint*(this: var PrsDimDiameterDimension): gp_Pnt {.cdecl,
    importcpp: "AnchorPoint", header: "PrsDim_DiameterDimension.hxx".}
proc shape*(this: PrsDimDiameterDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "PrsDim_DiameterDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimDiameterDimension; theCircle: gp_Circ) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_DiameterDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimDiameterDimension; theShape: TopoDS_Shape) {.
    cdecl, importcpp: "SetMeasuredGeometry", header: "PrsDim_DiameterDimension.hxx".}
proc getDisplayUnits*(this: PrsDimDiameterDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetDisplayUnits", header: "PrsDim_DiameterDimension.hxx".}
proc getModelUnits*(this: PrsDimDiameterDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetModelUnits", header: "PrsDim_DiameterDimension.hxx".}
proc setDisplayUnits*(this: var PrsDimDiameterDimension;
                     theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisplayUnits", header: "PrsDim_DiameterDimension.hxx".}
proc setModelUnits*(this: var PrsDimDiameterDimension;
                   theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetModelUnits", header: "PrsDim_DiameterDimension.hxx".}
proc setTextPosition*(this: var PrsDimDiameterDimension; theTextPos: gp_Pnt) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_DiameterDimension.hxx".}
proc getTextPosition*(this: PrsDimDiameterDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_DiameterDimension.hxx".}


