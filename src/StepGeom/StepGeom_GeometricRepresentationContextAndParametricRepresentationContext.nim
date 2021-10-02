##  Created on: 1995-12-07
##  Created by: FMA
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
discard "forward decl of StepRepr_ParametricRepresentationContext"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_GeometricRepresentationContextAndParametricRepresentationContext"
discard "forward decl of StepGeom_GeometricRepresentationContextAndParametricRepresentationContext"
type
  HandleC1C1* = Handle[StepGeomGeometricRepresentationContextAndParametricRepresentationContext]
  StepGeomGeometricRepresentationContextAndParametricRepresentationContext* {.importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx",
      bycopy.} = object of StepReprRepresentationContext ## ! empty constructor


proc constructStepGeomGeometricRepresentationContextAndParametricRepresentationContext*(): StepGeomGeometricRepresentationContextAndParametricRepresentationContext {.
    constructor, importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext(@)", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc init*(this: var StepGeomGeometricRepresentationContextAndParametricRepresentationContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
    aGeometricRepresentationContext: Handle[
    StepGeomGeometricRepresentationContext]; aParametricRepresentationContext: Handle[
    StepReprParametricRepresentationContext]) {.importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc init*(this: var StepGeomGeometricRepresentationContextAndParametricRepresentationContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
          aCoordinateSpaceDimension: int) {.importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc setGeometricRepresentationContext*(this: var StepGeomGeometricRepresentationContextAndParametricRepresentationContext;
    aGeometricRepresentationContext: Handle[
    StepGeomGeometricRepresentationContext]) {.
    importcpp: "SetGeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc geometricRepresentationContext*(this: StepGeomGeometricRepresentationContextAndParametricRepresentationContext): Handle[
    StepGeomGeometricRepresentationContext] {.noSideEffect,
    importcpp: "GeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc setParametricRepresentationContext*(this: var StepGeomGeometricRepresentationContextAndParametricRepresentationContext;
    aParametricRepresentationContext: Handle[
    StepReprParametricRepresentationContext]) {.
    importcpp: "SetParametricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc parametricRepresentationContext*(this: StepGeomGeometricRepresentationContextAndParametricRepresentationContext): Handle[
    StepReprParametricRepresentationContext] {.noSideEffect,
    importcpp: "ParametricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc setCoordinateSpaceDimension*(this: var StepGeomGeometricRepresentationContextAndParametricRepresentationContext;
                                 aCoordinateSpaceDimension: int) {.
    importcpp: "SetCoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc coordinateSpaceDimension*(this: StepGeomGeometricRepresentationContextAndParametricRepresentationContext): int {.
    noSideEffect, importcpp: "CoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
type
  StepGeomGeometricRepresentationContextAndParametricRepresentationContextbaseType* = StepReprRepresentationContext

proc getTypeName*(): cstring {.importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext::get_type_name(@)", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext::get_type_descriptor(@)", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc dynamicType*(this: StepGeomGeometricRepresentationContextAndParametricRepresentationContext): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}