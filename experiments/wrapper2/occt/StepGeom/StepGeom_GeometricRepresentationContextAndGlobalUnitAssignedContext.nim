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

discard "forward decl of StepGeom_GeometricRepresentationContext"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext"
discard "forward decl of StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext"
type
  HandleStepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext* = Handle[
      StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext]
  StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext* {.importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx",
      bycopy.} = object of StepReprRepresentationContext ## ! Returns a
                                                    ## GeometricRepresentationContextAndGlobalUnitAssignedContext


proc constructStepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext*(): StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext {.
    constructor, importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext(@)", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc init*(this: var StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
    aGeometricRepresentationContext: Handle[
    StepGeomGeometricRepresentationContext];
          aGlobalUnitAssignedContext: Handle[StepReprGlobalUnitAssignedContext]) {.
    importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc init*(this: var StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
          aCoordinateSpaceDimension: int;
          aUnits: Handle[StepBasicHArray1OfNamedUnit]) {.importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc setGeometricRepresentationContext*(this: var StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext;
    aGeometricRepresentationContext: Handle[
    StepGeomGeometricRepresentationContext]) {.
    importcpp: "SetGeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc geometricRepresentationContext*(this: StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext): Handle[
    StepGeomGeometricRepresentationContext] {.noSideEffect,
    importcpp: "GeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc setGlobalUnitAssignedContext*(this: var StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext;
    aGlobalUnitAssignedContext: Handle[StepReprGlobalUnitAssignedContext]) {.
    importcpp: "SetGlobalUnitAssignedContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc globalUnitAssignedContext*(this: StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext): Handle[
    StepReprGlobalUnitAssignedContext] {.noSideEffect,
                                        importcpp: "GlobalUnitAssignedContext", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc setCoordinateSpaceDimension*(this: var StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext;
                                 aCoordinateSpaceDimension: int) {.
    importcpp: "SetCoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc coordinateSpaceDimension*(this: StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext): int {.
    noSideEffect, importcpp: "CoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc setUnits*(this: var StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext;
              aUnits: Handle[StepBasicHArray1OfNamedUnit]) {.
    importcpp: "SetUnits", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc units*(this: StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext): Handle[
    StepBasicHArray1OfNamedUnit] {.noSideEffect, importcpp: "Units", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc unitsValue*(this: StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext;
                num: int): Handle[StepBasicNamedUnit] {.noSideEffect,
    importcpp: "UnitsValue", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc nbUnits*(this: StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext): int {.
    noSideEffect, importcpp: "NbUnits", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
type
  StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContextbaseType* = StepReprRepresentationContext

proc getTypeName*(): cstring {.importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext::get_type_name(@)", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext::get_type_descriptor(@)", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
proc dynamicType*(this: StepGeomGeometricRepresentationContextAndGlobalUnitAssignedContext): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx".}
