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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_RepresentationContext, ../Standard/Standard_Integer,
  ../StepBasic/StepBasic_HArray1OfNamedUnit,
  ../StepBasic/StepBasic_HArray1OfUncertaintyMeasureWithUnit

discard "forward decl of StepGeom_GeometricRepresentationContext"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
discard "forward decl of StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx"
discard "forward decl of StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx"
type
  Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx* = handle[
      StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx]
  StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx* {.importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx",
      bycopy.} = object of StepRepr_RepresentationContext


proc constructStepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx*(): StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {.
    constructor, importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx(@)", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc Init*(this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
    aGeometricRepresentationCtx: handle[StepGeom_GeometricRepresentationContext];
          aGlobalUnitAssignedCtx: handle[StepRepr_GlobalUnitAssignedContext];
    aGlobalUncertaintyAssignedCtx: handle[
    StepRepr_GlobalUncertaintyAssignedContext]) {.importcpp: "Init", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc Init*(this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
          aCoordinateSpaceDimension: Standard_Integer;
          aUnits: handle[StepBasic_HArray1OfNamedUnit];
          anUncertainty: handle[StepBasic_HArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "Init", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc SetGeometricRepresentationContext*(this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aGeometricRepresentationContext: handle[
    StepGeom_GeometricRepresentationContext]) {.
    importcpp: "SetGeometricRepresentationContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc GeometricRepresentationContext*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): handle[
    StepGeom_GeometricRepresentationContext] {.noSideEffect,
    importcpp: "GeometricRepresentationContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc SetGlobalUnitAssignedContext*(this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aGlobalUnitAssignedContext: handle[StepRepr_GlobalUnitAssignedContext]) {.
    importcpp: "SetGlobalUnitAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc GlobalUnitAssignedContext*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): handle[
    StepRepr_GlobalUnitAssignedContext] {.noSideEffect,
    importcpp: "GlobalUnitAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc SetGlobalUncertaintyAssignedContext*(
    this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aGlobalUncertaintyAssignedCtx: handle[
    StepRepr_GlobalUncertaintyAssignedContext]) {.
    importcpp: "SetGlobalUncertaintyAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc GlobalUncertaintyAssignedContext*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): handle[
    StepRepr_GlobalUncertaintyAssignedContext] {.noSideEffect,
    importcpp: "GlobalUncertaintyAssignedContext", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc SetCoordinateSpaceDimension*(this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
                                 aCoordinateSpaceDimension: Standard_Integer) {.
    importcpp: "SetCoordinateSpaceDimension", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc CoordinateSpaceDimension*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Standard_Integer {.
    noSideEffect, importcpp: "CoordinateSpaceDimension", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc SetUnits*(this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
              aUnits: handle[StepBasic_HArray1OfNamedUnit]) {.
    importcpp: "SetUnits", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc Units*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): handle[
    StepBasic_HArray1OfNamedUnit] {.noSideEffect, importcpp: "Units", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc UnitsValue*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
                num: Standard_Integer): handle[StepBasic_NamedUnit] {.noSideEffect,
    importcpp: "UnitsValue", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc NbUnits*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Standard_Integer {.
    noSideEffect, importcpp: "NbUnits", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc SetUncertainty*(this: var StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
    aUncertainty: handle[StepBasic_HArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "SetUncertainty", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc Uncertainty*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): handle[
    StepBasic_HArray1OfUncertaintyMeasureWithUnit] {.noSideEffect,
    importcpp: "Uncertainty", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc UncertaintyValue*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
                      num: Standard_Integer): handle[
    StepBasic_UncertaintyMeasureWithUnit] {.noSideEffect,
    importcpp: "UncertaintyValue", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc NbUncertainty*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): Standard_Integer {.
    noSideEffect, importcpp: "NbUncertainty", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
type
  StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtxbase_type* = StepRepr_RepresentationContext

proc get_type_name*(): cstring {.importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx::get_type_name(@)", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx::get_type_descriptor(@)", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}
proc DynamicType*(this: StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx".}