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

import
  ../AIS/AIS_KindOfInteractive, ../AIS/AIS_InteractiveObject,
  ../Aspect/Aspect_TypeOfLine, ../Aspect/Aspect_TypeOfMarker, ../Bnd/Bnd_Box,
  ../DsgPrs/DsgPrs_ArrowSide, ../gp/gp_Pln, ../gp/gp_Pnt, PrsDim_KindOfDimension,
  PrsDim_KindOfSurface, ../TCollection/TCollection_ExtendedString,
  ../TopoDS/TopoDS_Shape

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Plane"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  PrsDim_Relation* {.importcpp: "PrsDim_Relation", header: "PrsDim_Relation.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Allows you to provide settings for the color theColor
                                                          ## ! of the lines representing the relation between the two shapes.

  PrsDim_Relationbase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "PrsDim_Relation::get_type_name(@)",
                              header: "PrsDim_Relation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_Relation::get_type_descriptor(@)",
    header: "PrsDim_Relation.hxx".}
proc DynamicType*(this: PrsDim_Relation): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsDim_Relation.hxx".}
proc SetColor*(this: var PrsDim_Relation; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "PrsDim_Relation.hxx".}
proc UnsetColor*(this: var PrsDim_Relation) {.importcpp: "UnsetColor",
    header: "PrsDim_Relation.hxx".}
proc Type*(this: PrsDim_Relation): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "PrsDim_Relation.hxx".}
proc KindOfDimension*(this: PrsDim_Relation): PrsDim_KindOfDimension {.noSideEffect,
    importcpp: "KindOfDimension", header: "PrsDim_Relation.hxx".}
proc IsMovable*(this: PrsDim_Relation): Standard_Boolean {.noSideEffect,
    importcpp: "IsMovable", header: "PrsDim_Relation.hxx".}
proc FirstShape*(this: PrsDim_Relation): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "PrsDim_Relation.hxx".}
proc SetFirstShape*(this: var PrsDim_Relation; aFShape: TopoDS_Shape) {.
    importcpp: "SetFirstShape", header: "PrsDim_Relation.hxx".}
proc SecondShape*(this: PrsDim_Relation): TopoDS_Shape {.noSideEffect,
    importcpp: "SecondShape", header: "PrsDim_Relation.hxx".}
proc SetSecondShape*(this: var PrsDim_Relation; aSShape: TopoDS_Shape) {.
    importcpp: "SetSecondShape", header: "PrsDim_Relation.hxx".}
proc SetBndBox*(this: var PrsDim_Relation; theXmin: Standard_Real;
               theYmin: Standard_Real; theZmin: Standard_Real;
               theXmax: Standard_Real; theYmax: Standard_Real;
               theZmax: Standard_Real) {.importcpp: "SetBndBox",
                                       header: "PrsDim_Relation.hxx".}
proc UnsetBndBox*(this: var PrsDim_Relation) {.importcpp: "UnsetBndBox",
    header: "PrsDim_Relation.hxx".}
proc Plane*(this: PrsDim_Relation): handle[Geom_Plane] {.noSideEffect,
    importcpp: "Plane", header: "PrsDim_Relation.hxx".}
proc SetPlane*(this: var PrsDim_Relation; thePlane: handle[Geom_Plane]) {.
    importcpp: "SetPlane", header: "PrsDim_Relation.hxx".}
proc Value*(this: PrsDim_Relation): Standard_Real {.noSideEffect, importcpp: "Value",
    header: "PrsDim_Relation.hxx".}
proc SetValue*(this: var PrsDim_Relation; theVal: Standard_Real) {.
    importcpp: "SetValue", header: "PrsDim_Relation.hxx".}
proc Position*(this: PrsDim_Relation): gp_Pnt {.noSideEffect, importcpp: "Position",
    header: "PrsDim_Relation.hxx".}
proc SetPosition*(this: var PrsDim_Relation; thePosition: gp_Pnt) {.
    importcpp: "SetPosition", header: "PrsDim_Relation.hxx".}
proc Text*(this: PrsDim_Relation): TCollection_ExtendedString {.noSideEffect,
    importcpp: "Text", header: "PrsDim_Relation.hxx".}
proc SetText*(this: var PrsDim_Relation; theText: TCollection_ExtendedString) {.
    importcpp: "SetText", header: "PrsDim_Relation.hxx".}
proc ArrowSize*(this: PrsDim_Relation): Standard_Real {.noSideEffect,
    importcpp: "ArrowSize", header: "PrsDim_Relation.hxx".}
proc SetArrowSize*(this: var PrsDim_Relation; theArrowSize: Standard_Real) {.
    importcpp: "SetArrowSize", header: "PrsDim_Relation.hxx".}
proc SymbolPrs*(this: PrsDim_Relation): DsgPrs_ArrowSide {.noSideEffect,
    importcpp: "SymbolPrs", header: "PrsDim_Relation.hxx".}
proc SetSymbolPrs*(this: var PrsDim_Relation; theSymbolPrs: DsgPrs_ArrowSide) {.
    importcpp: "SetSymbolPrs", header: "PrsDim_Relation.hxx".}
proc SetExtShape*(this: var PrsDim_Relation; theIndex: Standard_Integer) {.
    importcpp: "SetExtShape", header: "PrsDim_Relation.hxx".}
proc ExtShape*(this: PrsDim_Relation): Standard_Integer {.noSideEffect,
    importcpp: "ExtShape", header: "PrsDim_Relation.hxx".}
proc AcceptDisplayMode*(this: PrsDim_Relation; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "PrsDim_Relation.hxx".}
proc SetAutomaticPosition*(this: var PrsDim_Relation; theStatus: Standard_Boolean) {.
    importcpp: "SetAutomaticPosition", header: "PrsDim_Relation.hxx".}
proc AutomaticPosition*(this: PrsDim_Relation): Standard_Boolean {.noSideEffect,
    importcpp: "AutomaticPosition", header: "PrsDim_Relation.hxx".}
discard "forward decl of PrsDim_Relation"
type
  Handle_PrsDim_Relation* = handle[PrsDim_Relation]
