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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepRepr/StepRepr_RepresentationContext, ../Standard/Standard_Integer

discard "forward decl of StepGeom_GeometricRepresentationContext"
discard "forward decl of StepRepr_ParametricRepresentationContext"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_GeometricRepresentationContextAndParametricRepresentationContext"
discard "forward decl of StepGeom_GeometricRepresentationContextAndParametricRepresentationContext"
type
  Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext* = handle[
      StepGeom_GeometricRepresentationContextAndParametricRepresentationContext]
  StepGeom_GeometricRepresentationContextAndParametricRepresentationContext* {.importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx",
      bycopy.} = object of StepRepr_RepresentationContext ## ! empty constructor


proc constructStepGeom_GeometricRepresentationContextAndParametricRepresentationContext*(): StepGeom_GeometricRepresentationContextAndParametricRepresentationContext {.
    constructor, importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext(@)", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc Init*(this: var StepGeom_GeometricRepresentationContextAndParametricRepresentationContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
    aGeometricRepresentationContext: handle[
    StepGeom_GeometricRepresentationContext]; aParametricRepresentationContext: handle[
    StepRepr_ParametricRepresentationContext]) {.importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc Init*(this: var StepGeom_GeometricRepresentationContextAndParametricRepresentationContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
          aCoordinateSpaceDimension: Standard_Integer) {.importcpp: "Init", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc SetGeometricRepresentationContext*(this: var StepGeom_GeometricRepresentationContextAndParametricRepresentationContext;
    aGeometricRepresentationContext: handle[
    StepGeom_GeometricRepresentationContext]) {.
    importcpp: "SetGeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc GeometricRepresentationContext*(this: StepGeom_GeometricRepresentationContextAndParametricRepresentationContext): handle[
    StepGeom_GeometricRepresentationContext] {.noSideEffect,
    importcpp: "GeometricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc SetParametricRepresentationContext*(this: var StepGeom_GeometricRepresentationContextAndParametricRepresentationContext;
    aParametricRepresentationContext: handle[
    StepRepr_ParametricRepresentationContext]) {.
    importcpp: "SetParametricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc ParametricRepresentationContext*(this: StepGeom_GeometricRepresentationContextAndParametricRepresentationContext): handle[
    StepRepr_ParametricRepresentationContext] {.noSideEffect,
    importcpp: "ParametricRepresentationContext", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc SetCoordinateSpaceDimension*(this: var StepGeom_GeometricRepresentationContextAndParametricRepresentationContext;
                                 aCoordinateSpaceDimension: Standard_Integer) {.
    importcpp: "SetCoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc CoordinateSpaceDimension*(this: StepGeom_GeometricRepresentationContextAndParametricRepresentationContext): Standard_Integer {.
    noSideEffect, importcpp: "CoordinateSpaceDimension", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
type
  StepGeom_GeometricRepresentationContextAndParametricRepresentationContextbase_type* = StepRepr_RepresentationContext

proc get_type_name*(): cstring {.importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext::get_type_name(@)", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext::get_type_descriptor(@)", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}
proc DynamicType*(this: StepGeom_GeometricRepresentationContextAndParametricRepresentationContext): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType", header: "StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx".}