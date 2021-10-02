##  Created on: 1995-12-07
##  Created by: Frederic MAUPAS
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

discard "forward decl of StepGeom_GeometricRepresentationContext"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
discard "forward decl of StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx"
discard "forward decl of StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx"
type
  HandleC1C1* = Handle[StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx]
  StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx* {.importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx",
      bycopy.} = object of StepReprRepresentationContext


proc constructStepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx*(): StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {.
    constructor, importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx(@)", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc init*(this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
    aGeometricRepresentationCtx: Handle[StepGeomGeometricRepresentationContext];
          aGlobalUnitAssignedCtx: Handle[StepReprGlobalUnitAssignedContext];
    aGlobalUncertaintyAssignedCtx: Handle[
    StepReprGlobalUncertaintyAssignedContext]) {.importcpp: "Init", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc init*(this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
          aCoordinateSpaceDimension: int;
          aUnits: Handle[StepBasicHArray1OfNamedUnit];
          anUncertainty: Handle[StepBasicHArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "Init", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc setGeometricRepresentationContext*(this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aGeometricRepresentationContext: Handle[
    StepGeomGeometricRepresentationContext]) {.
    importcpp: "SetGeometricRepresentationContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc geometricRepresentationContext*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Handle[
    StepGeomGeometricRepresentationContext] {.noSideEffect,
    importcpp: "GeometricRepresentationContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc setGlobalUnitAssignedContext*(this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aGlobalUnitAssignedContext: Handle[StepReprGlobalUnitAssignedContext]) {.
    importcpp: "SetGlobalUnitAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc globalUnitAssignedContext*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Handle[
    StepReprGlobalUnitAssignedContext] {.noSideEffect,
                                        importcpp: "GlobalUnitAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc setGlobalUncertaintyAssignedContext*(
    this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aGlobalUncertaintyAssignedCtx: Handle[
    StepReprGlobalUncertaintyAssignedContext]) {.
    importcpp: "SetGlobalUncertaintyAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc globalUncertaintyAssignedContext*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Handle[
    StepReprGlobalUncertaintyAssignedContext] {.noSideEffect,
    importcpp: "GlobalUncertaintyAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc setCoordinateSpaceDimension*(this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
                                 aCoordinateSpaceDimension: int) {.
    importcpp: "SetCoordinateSpaceDimension", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc coordinateSpaceDimension*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): int {.
    noSideEffect, importcpp: "CoordinateSpaceDimension", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc setUnits*(this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
              aUnits: Handle[StepBasicHArray1OfNamedUnit]) {.
    importcpp: "SetUnits", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc units*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Handle[
    StepBasicHArray1OfNamedUnit] {.noSideEffect, importcpp: "Units", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc unitsValue*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
                num: int): Handle[StepBasicNamedUnit] {.noSideEffect,
    importcpp: "UnitsValue", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc nbUnits*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): int {.
    noSideEffect, importcpp: "NbUnits", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc setUncertainty*(this: var StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aUncertainty: Handle[StepBasicHArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "SetUncertainty", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc uncertainty*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Handle[
    StepBasicHArray1OfUncertaintyMeasureWithUnit] {.noSideEffect,
    importcpp: "Uncertainty", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc uncertaintyValue*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
                      num: int): Handle[StepBasicUncertaintyMeasureWithUnit] {.
    noSideEffect, importcpp: "UncertaintyValue", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc nbUncertainty*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): int {.
    noSideEffect, importcpp: "NbUncertainty", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
type
  StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtxbaseType* = StepReprRepresentationContext

proc getTypeName*(): cstring {.importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx::get_type_name(@)", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx::get_type_descriptor(@)", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc dynamicType*(this: StepGeomGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}