##  Created on: 1995-12-07
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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_RepresentationContext, ../Standard/Standard_Integer,
  ../StepBasic/StepBasic_HArray1OfNamedUnit

discard "forward decl of StepGeom_GeometricRepresentationContext"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext"
discard "forward decl of StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext"
type
  Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext* = handle[
      StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext]
  StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext* {.importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx",
      bycopy.} = object of StepRepr_RepresentationContext ## ! Returns a
                                                     ## GeometricRepresentationContextAndGlobalUnitAssignedContext


proc constructStepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext*(): StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext {.
    constructor, importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext(@)", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc Init*(this: var StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
    aGeometricRepresentationContext: handle[
    StepGeom_GeometricRepresentationContext]; aGlobalUnitAssignedContext: handle[
    StepRepr_GlobalUnitAssignedContext]) {.importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc Init*(this: var StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
          aCoordinateSpaceDimension: Standard_Integer;
          aUnits: handle[StepBasic_HArray1OfNamedUnit]) {.importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc SetGeometricRepresentationContext*(this: var StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
    aGeometricRepresentationContext: handle[
    StepGeom_GeometricRepresentationContext]) {.
    importcpp: "SetGeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc GeometricRepresentationContext*(this: StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext): handle[
    StepGeom_GeometricRepresentationContext] {.noSideEffect,
    importcpp: "GeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc SetGlobalUnitAssignedContext*(this: var StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
    aGlobalUnitAssignedContext: handle[StepRepr_GlobalUnitAssignedContext]) {.
    importcpp: "SetGlobalUnitAssignedContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc GlobalUnitAssignedContext*(this: StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext): handle[
    StepRepr_GlobalUnitAssignedContext] {.noSideEffect,
    importcpp: "GlobalUnitAssignedContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc SetCoordinateSpaceDimension*(this: var StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
                                 aCoordinateSpaceDimension: Standard_Integer) {.
    importcpp: "SetCoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc CoordinateSpaceDimension*(this: StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext): Standard_Integer {.
    noSideEffect, importcpp: "CoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc SetUnits*(this: var StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
              aUnits: handle[StepBasic_HArray1OfNamedUnit]) {.
    importcpp: "SetUnits", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc Units*(this: StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext): handle[
    StepBasic_HArray1OfNamedUnit] {.noSideEffect, importcpp: "Units", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc UnitsValue*(this: StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext;
                num: Standard_Integer): handle[StepBasic_NamedUnit] {.noSideEffect,
    importcpp: "UnitsValue", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc NbUnits*(this: StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext): Standard_Integer {.
    noSideEffect, importcpp: "NbUnits", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
type
  StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContextbase_type* = StepRepr_RepresentationContext

proc get_type_name*(): cstring {.importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext::get_type_name(@)", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext::get_type_descriptor(@)", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc DynamicType*(this: StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}