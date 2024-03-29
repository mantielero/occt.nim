import prsdim_types
import ../gp/gp_types
import ../tcollection/tcollection_types
import ../topods/topods_types





##  Copyright (c) 1995-1999 Matra Datavision
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





proc newPrsDimAngleDimension*(theFirstEdge: TopoDS_Edge; theSecondEdge: TopoDS_Edge): PrsDimAngleDimension {.
    cdecl, constructor, importcpp: "PrsDim_AngleDimension(@)", header: "PrsDim_AngleDimension.hxx".}
proc newPrsDimAngleDimension*(theFirstPoint: gp_Pnt; theSecondPoint: gp_Pnt;
                             theThirdPoint: gp_Pnt): PrsDimAngleDimension {.cdecl,
    constructor, importcpp: "PrsDim_AngleDimension(@)", header: "PrsDim_AngleDimension.hxx".}
proc newPrsDimAngleDimension*(theFirstVertex: TopoDS_Vertex;
                             theSecondVertex: TopoDS_Vertex;
                             theThirdVertex: TopoDS_Vertex): PrsDimAngleDimension {.
    cdecl, constructor, importcpp: "PrsDim_AngleDimension(@)", header: "PrsDim_AngleDimension.hxx".}
proc newPrsDimAngleDimension*(theCone: TopoDS_Face): PrsDimAngleDimension {.cdecl,
    constructor, importcpp: "PrsDim_AngleDimension(@)", header: "PrsDim_AngleDimension.hxx".}
proc newPrsDimAngleDimension*(theFirstFace: TopoDS_Face; theSecondFace: TopoDS_Face): PrsDimAngleDimension {.
    cdecl, constructor, importcpp: "PrsDim_AngleDimension(@)", header: "PrsDim_AngleDimension.hxx".}
proc newPrsDimAngleDimension*(theFirstFace: TopoDS_Face;
                             theSecondFace: TopoDS_Face; thePoint: gp_Pnt): PrsDimAngleDimension {.
    cdecl, constructor, importcpp: "PrsDim_AngleDimension(@)", header: "PrsDim_AngleDimension.hxx".}
proc firstPoint*(this: PrsDimAngleDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "FirstPoint", header: "PrsDim_AngleDimension.hxx".}
proc secondPoint*(this: PrsDimAngleDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "SecondPoint", header: "PrsDim_AngleDimension.hxx".}
proc centerPoint*(this: PrsDimAngleDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "CenterPoint", header: "PrsDim_AngleDimension.hxx".}
proc firstShape*(this: PrsDimAngleDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "FirstShape", header: "PrsDim_AngleDimension.hxx".}
proc secondShape*(this: PrsDimAngleDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SecondShape", header: "PrsDim_AngleDimension.hxx".}
proc thirdShape*(this: PrsDimAngleDimension): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "ThirdShape", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstEdge: TopoDS_Edge;
                         theSecondEdge: TopoDS_Edge) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstPoint: gp_Pnt;
                         theSecondPoint: gp_Pnt; theThridPoint: gp_Pnt) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension;
                         theFirstVertex: TopoDS_Vertex;
                         theSecondVertex: TopoDS_Vertex;
                         theThirdVertex: TopoDS_Vertex) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theCone: TopoDS_Face) {.
    cdecl, importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstFace: TopoDS_Face;
                         theSecondFace: TopoDS_Face) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc setMeasuredGeometry*(this: var PrsDimAngleDimension; theFirstFace: TopoDS_Face;
                         theSecondFace: TopoDS_Face; thePoint: gp_Pnt) {.cdecl,
    importcpp: "SetMeasuredGeometry", header: "PrsDim_AngleDimension.hxx".}
proc getDisplayUnits*(this: PrsDimAngleDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetDisplayUnits", header: "PrsDim_AngleDimension.hxx".}
proc getModelUnits*(this: PrsDimAngleDimension): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetModelUnits", header: "PrsDim_AngleDimension.hxx".}
proc setDisplayUnits*(this: var PrsDimAngleDimension;
                     theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDisplayUnits", header: "PrsDim_AngleDimension.hxx".}
proc setModelUnits*(this: var PrsDimAngleDimension; theUnits: TCollectionAsciiString) {.
    cdecl, importcpp: "SetModelUnits", header: "PrsDim_AngleDimension.hxx".}
proc setTextPosition*(this: var PrsDimAngleDimension; theTextPos: gp_Pnt) {.cdecl,
    importcpp: "SetTextPosition", header: "PrsDim_AngleDimension.hxx".}
proc getTextPosition*(this: PrsDimAngleDimension): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "GetTextPosition", header: "PrsDim_AngleDimension.hxx".}
proc setType*(this: var PrsDimAngleDimension; theType: PrsDimTypeOfAngle) {.cdecl,
    importcpp: "SetType", header: "PrsDim_AngleDimension.hxx".}
proc getType*(this: PrsDimAngleDimension): PrsDimTypeOfAngle {.noSideEffect, cdecl,
    importcpp: "GetType", header: "PrsDim_AngleDimension.hxx".}
proc setArrowsVisibility*(this: var PrsDimAngleDimension;
                         theType: PrsDimTypeOfAngleArrowVisibility) {.cdecl,
    importcpp: "SetArrowsVisibility", header: "PrsDim_AngleDimension.hxx".}
proc getArrowsVisibility*(this: PrsDimAngleDimension): PrsDimTypeOfAngleArrowVisibility {.
    noSideEffect, cdecl, importcpp: "GetArrowsVisibility", header: "PrsDim_AngleDimension.hxx".}


