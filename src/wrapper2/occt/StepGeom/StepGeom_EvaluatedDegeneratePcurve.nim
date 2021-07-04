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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_DegeneratePcurve

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Surface"
discard "forward decl of StepRepr_DefinitionalRepresentation"
discard "forward decl of StepGeom_EvaluatedDegeneratePcurve"
discard "forward decl of StepGeom_EvaluatedDegeneratePcurve"
type
  Handle_StepGeom_EvaluatedDegeneratePcurve* = handle[
      StepGeom_EvaluatedDegeneratePcurve]
  StepGeom_EvaluatedDegeneratePcurve* {.importcpp: "StepGeom_EvaluatedDegeneratePcurve", header: "StepGeom_EvaluatedDegeneratePcurve.hxx",
                                       bycopy.} = object of StepGeom_DegeneratePcurve ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## EvaluatedDegeneratePcurve


proc constructStepGeom_EvaluatedDegeneratePcurve*(): StepGeom_EvaluatedDegeneratePcurve {.
    constructor, importcpp: "StepGeom_EvaluatedDegeneratePcurve(@)",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc Init*(this: var StepGeom_EvaluatedDegeneratePcurve;
          aName: handle[TCollection_HAsciiString];
          aBasisSurface: handle[StepGeom_Surface];
          aReferenceToCurve: handle[StepRepr_DefinitionalRepresentation];
          aEquivalentPoint: handle[StepGeom_CartesianPoint]) {.importcpp: "Init",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc SetEquivalentPoint*(this: var StepGeom_EvaluatedDegeneratePcurve;
                        aEquivalentPoint: handle[StepGeom_CartesianPoint]) {.
    importcpp: "SetEquivalentPoint",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc EquivalentPoint*(this: StepGeom_EvaluatedDegeneratePcurve): handle[
    StepGeom_CartesianPoint] {.noSideEffect, importcpp: "EquivalentPoint",
                              header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
type
  StepGeom_EvaluatedDegeneratePcurvebase_type* = StepGeom_DegeneratePcurve

proc get_type_name*(): cstring {.importcpp: "StepGeom_EvaluatedDegeneratePcurve::get_type_name(@)",
                              header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_EvaluatedDegeneratePcurve::get_type_descriptor(@)",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}
proc DynamicType*(this: StepGeom_EvaluatedDegeneratePcurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepGeom_EvaluatedDegeneratePcurve.hxx".}