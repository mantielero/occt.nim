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
discard "forward decl of StepGeom_GeometricRepresentationContext"
discard "forward decl of StepGeom_GeometricRepresentationContext"
type
  HandleC1C1* = Handle[StepGeomGeometricRepresentationContext]
  StepGeomGeometricRepresentationContext* {.
      importcpp: "StepGeom_GeometricRepresentationContext",
      header: "StepGeom_GeometricRepresentationContext.hxx", bycopy.} = object of StepReprRepresentationContext ##
                                                                                                         ## !
                                                                                                         ## Returns
                                                                                                         ## a
                                                                                                         ## GeometricRepresentationContext


proc constructStepGeomGeometricRepresentationContext*(): StepGeomGeometricRepresentationContext {.
    constructor, importcpp: "StepGeom_GeometricRepresentationContext(@)",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc init*(this: var StepGeomGeometricRepresentationContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
          aCoordinateSpaceDimension: int) {.importcpp: "Init",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc setCoordinateSpaceDimension*(this: var StepGeomGeometricRepresentationContext;
                                 aCoordinateSpaceDimension: int) {.
    importcpp: "SetCoordinateSpaceDimension",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc coordinateSpaceDimension*(this: StepGeomGeometricRepresentationContext): int {.
    noSideEffect, importcpp: "CoordinateSpaceDimension",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
type
  StepGeomGeometricRepresentationContextbaseType* = StepReprRepresentationContext

proc getTypeName*(): cstring {.importcpp: "StepGeom_GeometricRepresentationContext::get_type_name(@)", header: "StepGeom_GeometricRepresentationContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepGeom_GeometricRepresentationContext::get_type_descriptor(@)",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc dynamicType*(this: StepGeomGeometricRepresentationContext): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepGeom_GeometricRepresentationContext.hxx".}