##  Created on: 1997-02-27
##  Created by: Odile Olivier
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  PrsDimRelation* {.importcpp: "PrsDim_Relation", header: "PrsDim_Relation.hxx",
                   bycopy.} = object of AIS_InteractiveObject ## ! Allows you to provide settings for the color theColor
                                                         ## ! of the lines representing the relation between the two shapes.


proc setColor*(this: var PrsDimRelation; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "PrsDim_Relation.hxx".}
proc unsetColor*(this: var PrsDimRelation) {.cdecl, importcpp: "UnsetColor",
    header: "PrsDim_Relation.hxx".}
proc `type`*(this: PrsDimRelation): AIS_KindOfInteractive {.noSideEffect, cdecl,
    importcpp: "Type", header: "PrsDim_Relation.hxx".}
proc kindOfDimension*(this: PrsDimRelation): PrsDimKindOfDimension {.noSideEffect,
    cdecl, importcpp: "KindOfDimension", header: "PrsDim_Relation.hxx".}
proc isMovable*(this: PrsDimRelation): bool {.noSideEffect, cdecl,
    importcpp: "IsMovable", header: "PrsDim_Relation.hxx".}
proc firstShape*(this: PrsDimRelation): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "FirstShape", header: "PrsDim_Relation.hxx".}
proc setFirstShape*(this: var PrsDimRelation; aFShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetFirstShape", header: "PrsDim_Relation.hxx".}
proc secondShape*(this: PrsDimRelation): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "SecondShape", header: "PrsDim_Relation.hxx".}
proc setSecondShape*(this: var PrsDimRelation; aSShape: TopoDS_Shape) {.cdecl,
    importcpp: "SetSecondShape", header: "PrsDim_Relation.hxx".}
proc setBndBox*(this: var PrsDimRelation; theXmin: cfloat; theYmin: cfloat;
               theZmin: cfloat; theXmax: cfloat; theYmax: cfloat; theZmax: cfloat) {.
    cdecl, importcpp: "SetBndBox", header: "PrsDim_Relation.hxx".}
proc unsetBndBox*(this: var PrsDimRelation) {.cdecl, importcpp: "UnsetBndBox",
    header: "PrsDim_Relation.hxx".}
proc plane*(this: PrsDimRelation): Handle[GeomPlane] {.noSideEffect, cdecl,
    importcpp: "Plane", header: "PrsDim_Relation.hxx".}
proc setPlane*(this: var PrsDimRelation; thePlane: Handle[GeomPlane]) {.cdecl,
    importcpp: "SetPlane", header: "PrsDim_Relation.hxx".}
proc value*(this: PrsDimRelation): cfloat {.noSideEffect, cdecl, importcpp: "Value",
                                        header: "PrsDim_Relation.hxx".}
proc setValue*(this: var PrsDimRelation; theVal: cfloat) {.cdecl,
    importcpp: "SetValue", header: "PrsDim_Relation.hxx".}
proc position*(this: PrsDimRelation): PntObj {.noSideEffect, cdecl,
                                        importcpp: "Position", header: "PrsDim_Relation.hxx".}
proc setPosition*(this: var PrsDimRelation; thePosition: PntObj) {.cdecl,
    importcpp: "SetPosition", header: "PrsDim_Relation.hxx".}
proc text*(this: PrsDimRelation): TCollectionExtendedString {.noSideEffect, cdecl,
    importcpp: "Text", header: "PrsDim_Relation.hxx".}
proc setText*(this: var PrsDimRelation; theText: TCollectionExtendedString) {.cdecl,
    importcpp: "SetText", header: "PrsDim_Relation.hxx".}
proc arrowSize*(this: PrsDimRelation): cfloat {.noSideEffect, cdecl,
    importcpp: "ArrowSize", header: "PrsDim_Relation.hxx".}
proc setArrowSize*(this: var PrsDimRelation; theArrowSize: cfloat) {.cdecl,
    importcpp: "SetArrowSize", header: "PrsDim_Relation.hxx".}
proc symbolPrs*(this: PrsDimRelation): DsgPrsArrowSide {.noSideEffect, cdecl,
    importcpp: "SymbolPrs", header: "PrsDim_Relation.hxx".}
proc setSymbolPrs*(this: var PrsDimRelation; theSymbolPrs: DsgPrsArrowSide) {.cdecl,
    importcpp: "SetSymbolPrs", header: "PrsDim_Relation.hxx".}
proc setExtShape*(this: var PrsDimRelation; theIndex: cint) {.cdecl,
    importcpp: "SetExtShape", header: "PrsDim_Relation.hxx".}
proc extShape*(this: PrsDimRelation): cint {.noSideEffect, cdecl,
    importcpp: "ExtShape", header: "PrsDim_Relation.hxx".}
proc acceptDisplayMode*(this: PrsDimRelation; theMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "PrsDim_Relation.hxx".}
proc setAutomaticPosition*(this: var PrsDimRelation; theStatus: bool) {.cdecl,
    importcpp: "SetAutomaticPosition", header: "PrsDim_Relation.hxx".}
proc automaticPosition*(this: PrsDimRelation): bool {.noSideEffect, cdecl,
    importcpp: "AutomaticPosition", header: "PrsDim_Relation.hxx".}
type
  HandlePrsDimRelation* = Handle[PrsDimRelation]
