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
  ../Standard/Standard, ../Standard/Standard_Type, StepGeom_Point

discard "forward decl of StepGeom_Surface"
discard "forward decl of StepRepr_DefinitionalRepresentation"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_DegeneratePcurve"
discard "forward decl of StepGeom_DegeneratePcurve"
type
  Handle_StepGeom_DegeneratePcurve* = handle[StepGeom_DegeneratePcurve]
  StepGeom_DegeneratePcurve* {.importcpp: "StepGeom_DegeneratePcurve",
                              header: "StepGeom_DegeneratePcurve.hxx", bycopy.} = object of StepGeom_Point ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## DegeneratePcurve


proc constructStepGeom_DegeneratePcurve*(): StepGeom_DegeneratePcurve {.
    constructor, importcpp: "StepGeom_DegeneratePcurve(@)",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc Init*(this: var StepGeom_DegeneratePcurve;
          aName: handle[TCollection_HAsciiString];
          aBasisSurface: handle[StepGeom_Surface];
          aReferenceToCurve: handle[StepRepr_DefinitionalRepresentation]) {.
    importcpp: "Init", header: "StepGeom_DegeneratePcurve.hxx".}
proc SetBasisSurface*(this: var StepGeom_DegeneratePcurve;
                     aBasisSurface: handle[StepGeom_Surface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_DegeneratePcurve.hxx".}
proc BasisSurface*(this: StepGeom_DegeneratePcurve): handle[StepGeom_Surface] {.
    noSideEffect, importcpp: "BasisSurface",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc SetReferenceToCurve*(this: var StepGeom_DegeneratePcurve; aReferenceToCurve: handle[
    StepRepr_DefinitionalRepresentation]) {.importcpp: "SetReferenceToCurve",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc ReferenceToCurve*(this: StepGeom_DegeneratePcurve): handle[
    StepRepr_DefinitionalRepresentation] {.noSideEffect,
    importcpp: "ReferenceToCurve", header: "StepGeom_DegeneratePcurve.hxx".}
type
  StepGeom_DegeneratePcurvebase_type* = StepGeom_Point

proc get_type_name*(): cstring {.importcpp: "StepGeom_DegeneratePcurve::get_type_name(@)",
                              header: "StepGeom_DegeneratePcurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepGeom_DegeneratePcurve::get_type_descriptor(@)",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc DynamicType*(this: StepGeom_DegeneratePcurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_DegeneratePcurve.hxx".}