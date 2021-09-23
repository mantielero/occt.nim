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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../StepRepr/StepRepr_RepresentationContext

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_GeometricRepresentationContext"
discard "forward decl of StepGeom_GeometricRepresentationContext"
type
  Handle_StepGeom_GeometricRepresentationContext* = handle[
      StepGeom_GeometricRepresentationContext]
  StepGeom_GeometricRepresentationContext* {.
      importcpp: "StepGeom_GeometricRepresentationContext",
      header: "StepGeom_GeometricRepresentationContext.hxx", bycopy.} = object of StepRepr_RepresentationContext ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## a
                                                                                                          ## GeometricRepresentationContext


proc constructStepGeom_GeometricRepresentationContext*(): StepGeom_GeometricRepresentationContext {.
    constructor, importcpp: "StepGeom_GeometricRepresentationContext(@)",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc Init*(this: var StepGeom_GeometricRepresentationContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
          aCoordinateSpaceDimension: Standard_Integer) {.importcpp: "Init",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc SetCoordinateSpaceDimension*(this: var StepGeom_GeometricRepresentationContext;
                                 aCoordinateSpaceDimension: Standard_Integer) {.
    importcpp: "SetCoordinateSpaceDimension",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc CoordinateSpaceDimension*(this: StepGeom_GeometricRepresentationContext): Standard_Integer {.
    noSideEffect, importcpp: "CoordinateSpaceDimension",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
type
  StepGeom_GeometricRepresentationContextbase_type* = StepRepr_RepresentationContext

proc get_type_name*(): cstring {.importcpp: "StepGeom_GeometricRepresentationContext::get_type_name(@)", header: "StepGeom_GeometricRepresentationContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepGeom_GeometricRepresentationContext::get_type_descriptor(@)",
    header: "StepGeom_GeometricRepresentationContext.hxx".}
proc DynamicType*(this: StepGeom_GeometricRepresentationContext): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepGeom_GeometricRepresentationContext.hxx".}