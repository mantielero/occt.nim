##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_BSplineSurfaceWithKnots"
discard "forward decl of StepGeom_BSplineSurfaceWithKnots"
type
  HandleC1C1* = Handle[StepGeomBSplineSurfaceWithKnots]
  StepGeomBSplineSurfaceWithKnots* {.importcpp: "StepGeom_BSplineSurfaceWithKnots", header: "StepGeom_BSplineSurfaceWithKnots.hxx",
                                    bycopy.} = object of StepGeomBSplineSurface ## !
                                                                           ## Returns a
                                                                           ## BSplineSurfaceWithKnots


proc constructStepGeomBSplineSurfaceWithKnots*(): StepGeomBSplineSurfaceWithKnots {.
    constructor, importcpp: "StepGeom_BSplineSurfaceWithKnots(@)",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc init*(this: var StepGeomBSplineSurfaceWithKnots;
          aName: Handle[TCollectionHAsciiString]; aUDegree: int; aVDegree: int;
          aControlPointsList: Handle[StepGeomHArray2OfCartesianPoint];
          aSurfaceForm: StepGeomBSplineSurfaceForm; aUClosed: StepDataLogical;
          aVClosed: StepDataLogical; aSelfIntersect: StepDataLogical;
          aUMultiplicities: Handle[TColStdHArray1OfInteger];
          aVMultiplicities: Handle[TColStdHArray1OfInteger];
          aUKnots: Handle[TColStdHArray1OfReal];
          aVKnots: Handle[TColStdHArray1OfReal]; aKnotSpec: StepGeomKnotType) {.
    importcpp: "Init", header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc setUMultiplicities*(this: var StepGeomBSplineSurfaceWithKnots;
                        aUMultiplicities: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetUMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc uMultiplicities*(this: StepGeomBSplineSurfaceWithKnots): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "UMultiplicities",
                              header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc uMultiplicitiesValue*(this: StepGeomBSplineSurfaceWithKnots; num: int): int {.
    noSideEffect, importcpp: "UMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc nbUMultiplicities*(this: StepGeomBSplineSurfaceWithKnots): int {.noSideEffect,
    importcpp: "NbUMultiplicities", header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc setVMultiplicities*(this: var StepGeomBSplineSurfaceWithKnots;
                        aVMultiplicities: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetVMultiplicities",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc vMultiplicities*(this: StepGeomBSplineSurfaceWithKnots): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "VMultiplicities",
                              header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc vMultiplicitiesValue*(this: StepGeomBSplineSurfaceWithKnots; num: int): int {.
    noSideEffect, importcpp: "VMultiplicitiesValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc nbVMultiplicities*(this: StepGeomBSplineSurfaceWithKnots): int {.noSideEffect,
    importcpp: "NbVMultiplicities", header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc setUKnots*(this: var StepGeomBSplineSurfaceWithKnots;
               aUKnots: Handle[TColStdHArray1OfReal]) {.importcpp: "SetUKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc uKnots*(this: StepGeomBSplineSurfaceWithKnots): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "UKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc uKnotsValue*(this: StepGeomBSplineSurfaceWithKnots; num: int): StandardReal {.
    noSideEffect, importcpp: "UKnotsValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc nbUKnots*(this: StepGeomBSplineSurfaceWithKnots): int {.noSideEffect,
    importcpp: "NbUKnots", header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc setVKnots*(this: var StepGeomBSplineSurfaceWithKnots;
               aVKnots: Handle[TColStdHArray1OfReal]) {.importcpp: "SetVKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc vKnots*(this: StepGeomBSplineSurfaceWithKnots): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "VKnots",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc vKnotsValue*(this: StepGeomBSplineSurfaceWithKnots; num: int): StandardReal {.
    noSideEffect, importcpp: "VKnotsValue",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc nbVKnots*(this: StepGeomBSplineSurfaceWithKnots): int {.noSideEffect,
    importcpp: "NbVKnots", header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc setKnotSpec*(this: var StepGeomBSplineSurfaceWithKnots;
                 aKnotSpec: StepGeomKnotType) {.importcpp: "SetKnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc knotSpec*(this: StepGeomBSplineSurfaceWithKnots): StepGeomKnotType {.
    noSideEffect, importcpp: "KnotSpec",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
type
  StepGeomBSplineSurfaceWithKnotsbaseType* = StepGeomBSplineSurface

proc getTypeName*(): cstring {.importcpp: "StepGeom_BSplineSurfaceWithKnots::get_type_name(@)",
                            header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_BSplineSurfaceWithKnots::get_type_descriptor(@)",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}
proc dynamicType*(this: StepGeomBSplineSurfaceWithKnots): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_BSplineSurfaceWithKnots.hxx".}