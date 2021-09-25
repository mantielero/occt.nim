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

  PrsDimRelationbaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "PrsDim_Relation::get_type_name(@)",
                            header: "PrsDim_Relation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_Relation::get_type_descriptor(@)",
    header: "PrsDim_Relation.hxx".}
proc dynamicType*(this: PrsDimRelation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_Relation.hxx".}
proc setColor*(this: var PrsDimRelation; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "PrsDim_Relation.hxx".}
proc unsetColor*(this: var PrsDimRelation) {.importcpp: "UnsetColor",
    header: "PrsDim_Relation.hxx".}
proc `type`*(this: PrsDimRelation): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "PrsDim_Relation.hxx".}
proc kindOfDimension*(this: PrsDimRelation): PrsDimKindOfDimension {.noSideEffect,
    importcpp: "KindOfDimension", header: "PrsDim_Relation.hxx".}
proc isMovable*(this: PrsDimRelation): bool {.noSideEffect, importcpp: "IsMovable",
    header: "PrsDim_Relation.hxx".}
proc firstShape*(this: PrsDimRelation): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "PrsDim_Relation.hxx".}
proc setFirstShape*(this: var PrsDimRelation; aFShape: TopoDS_Shape) {.
    importcpp: "SetFirstShape", header: "PrsDim_Relation.hxx".}
proc secondShape*(this: PrsDimRelation): TopoDS_Shape {.noSideEffect,
    importcpp: "SecondShape", header: "PrsDim_Relation.hxx".}
proc setSecondShape*(this: var PrsDimRelation; aSShape: TopoDS_Shape) {.
    importcpp: "SetSecondShape", header: "PrsDim_Relation.hxx".}
proc setBndBox*(this: var PrsDimRelation; theXmin: float; theYmin: float;
               theZmin: float; theXmax: float; theYmax: float; theZmax: float) {.
    importcpp: "SetBndBox", header: "PrsDim_Relation.hxx".}
proc unsetBndBox*(this: var PrsDimRelation) {.importcpp: "UnsetBndBox",
    header: "PrsDim_Relation.hxx".}
proc plane*(this: PrsDimRelation): Handle[GeomPlane] {.noSideEffect,
    importcpp: "Plane", header: "PrsDim_Relation.hxx".}
proc setPlane*(this: var PrsDimRelation; thePlane: Handle[GeomPlane]) {.
    importcpp: "SetPlane", header: "PrsDim_Relation.hxx".}
proc value*(this: PrsDimRelation): float {.noSideEffect, importcpp: "Value",
                                       header: "PrsDim_Relation.hxx".}
proc setValue*(this: var PrsDimRelation; theVal: float) {.importcpp: "SetValue",
    header: "PrsDim_Relation.hxx".}
proc position*(this: PrsDimRelation): Pnt {.noSideEffect, importcpp: "Position",
                                        header: "PrsDim_Relation.hxx".}
proc setPosition*(this: var PrsDimRelation; thePosition: Pnt) {.
    importcpp: "SetPosition", header: "PrsDim_Relation.hxx".}
proc text*(this: PrsDimRelation): TCollectionExtendedString {.noSideEffect,
    importcpp: "Text", header: "PrsDim_Relation.hxx".}
proc setText*(this: var PrsDimRelation; theText: TCollectionExtendedString) {.
    importcpp: "SetText", header: "PrsDim_Relation.hxx".}
proc arrowSize*(this: PrsDimRelation): float {.noSideEffect, importcpp: "ArrowSize",
    header: "PrsDim_Relation.hxx".}
proc setArrowSize*(this: var PrsDimRelation; theArrowSize: float) {.
    importcpp: "SetArrowSize", header: "PrsDim_Relation.hxx".}
proc symbolPrs*(this: PrsDimRelation): DsgPrsArrowSide {.noSideEffect,
    importcpp: "SymbolPrs", header: "PrsDim_Relation.hxx".}
proc setSymbolPrs*(this: var PrsDimRelation; theSymbolPrs: DsgPrsArrowSide) {.
    importcpp: "SetSymbolPrs", header: "PrsDim_Relation.hxx".}
proc setExtShape*(this: var PrsDimRelation; theIndex: int) {.importcpp: "SetExtShape",
    header: "PrsDim_Relation.hxx".}
proc extShape*(this: PrsDimRelation): int {.noSideEffect, importcpp: "ExtShape",
                                        header: "PrsDim_Relation.hxx".}
proc acceptDisplayMode*(this: PrsDimRelation; theMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "PrsDim_Relation.hxx".}
proc setAutomaticPosition*(this: var PrsDimRelation; theStatus: bool) {.
    importcpp: "SetAutomaticPosition", header: "PrsDim_Relation.hxx".}
proc automaticPosition*(this: PrsDimRelation): bool {.noSideEffect,
    importcpp: "AutomaticPosition", header: "PrsDim_Relation.hxx".}
discard "forward decl of PrsDim_Relation"
type
  HandlePrsDimRelation* = Handle[PrsDimRelation]

