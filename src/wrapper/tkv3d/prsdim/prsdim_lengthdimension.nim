import prsdim_types

##  Copyright (c) 1999-2013 OPEN CASCADE SAS
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





proc newPrsDimLengthDimension*(theFace: TopoDS_Face; theEdge: TopoDS_Edge): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theFirstFace: TopoDS_Face;
                              theSecondFace: TopoDS_Face): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theFirstPoint: PntObj; theSecondPoint: PntObj; thePlane: PlnObj): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theFirstShape: TopoDS_Shape;
                              theSecondShape: TopoDS_Shape; thePlane: PlnObj): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc newPrsDimLengthDimension*(theEdge: TopoDS_Edge; thePlane: PlnObj): PrsDimLengthDimension {.
    cdecl, constructor, importcpp: "PrsDim_LengthDimension(@)", header: "PrsDim_LengthDimension.hxx".}
proc firstPoint*(this: PrsDimLengthDimension): PntObj {.noSideEffect, cdecl,
    importcpp: "FirstPoint", header: "PrsDim_LengthDimension.hxx".}
proc secondPoint*(this: PrsDimLengthDimension): PntObj {.noSideEffect, cdecl,
    importcpp: "SecondPoint", header: "PrsDim_LengthDimension.hxx".}
proc firstShape*(this: PrsDimLengthDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "FirstShape", header: "PrsDim_LengthDimension.hxx".}
proc secondShape*(this: PrsDimLengthDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SecondShape", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension; theFirstPoint: PntObj;
                         theSecondPoint: PntObj; thePlane: PlnObj) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension; theEdge: TopoDS_Edge;
                         thePlane: PlnObj) {.cdecl, importcpp: "SetMeasuredGeometry",
                                        header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension;
                         theFirstFace: TopoDS_Face; theSecondFace: TopoDS_Face) {.
    cdecl, importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimLengthDimension; theFace: TopoDS_Face;
                         theEdge: TopoDS_Edge) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_LengthDimension.hxx".}
proc setMeasuredShapes*(this: var PrsDimLengthDimension;
                       theFirstShape: TopoDS_Shape; theSecondShape: TopoDS_Shape) {.
    cdecl, importcpp: "SetMeasuredShapes", header: "PrsDim_LengthDimension.hxx".}
proc getDisplayUnits*(this: PrsDimLengthDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetDisplayUnits", header: "PrsDim_LengthDimension.hxx".}
proc getModelUnits*(this: PrsDimLengthDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetModelUnits", header: "PrsDim_LengthDimension.hxx".}
proc setDisplayUnits*(this: var PrsDimLengthDimension;
                     theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisplayUnits", header: "PrsDim_LengthDimension.hxx".}
proc setModelUnits*(this: var PrsDimLengthDimension;
                   theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetModelUnits", header: "PrsDim_LengthDimension.hxx".}
proc setTextPosition*(this: var PrsDimLengthDimension; theTextPos: PntObj) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_LengthDimension.hxx".}
proc getTextPosition*(this: PrsDimLengthDimension): PntObj {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_LengthDimension.hxx".}
proc setDirection*(this: var PrsDimLengthDimension; theDirection: DirObj;
                  theUseDirection: bool = true) {.cdecl, importcpp: "SetDirection",
    header: "PrsDim_LengthDimension.hxx".}
