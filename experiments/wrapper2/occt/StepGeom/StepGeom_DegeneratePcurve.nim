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

discard "forward decl of StepGeom_Surface"
discard "forward decl of StepRepr_DefinitionalRepresentation"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_DegeneratePcurve"
discard "forward decl of StepGeom_DegeneratePcurve"
type
  HandleStepGeomDegeneratePcurve* = Handle[StepGeomDegeneratePcurve]
  StepGeomDegeneratePcurve* {.importcpp: "StepGeom_DegeneratePcurve",
                             header: "StepGeom_DegeneratePcurve.hxx", bycopy.} = object of StepGeomPoint ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## DegeneratePcurve


proc constructStepGeomDegeneratePcurve*(): StepGeomDegeneratePcurve {.constructor,
    importcpp: "StepGeom_DegeneratePcurve(@)",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc init*(this: var StepGeomDegeneratePcurve;
          aName: Handle[TCollectionHAsciiString];
          aBasisSurface: Handle[StepGeomSurface];
          aReferenceToCurve: Handle[StepReprDefinitionalRepresentation]) {.
    importcpp: "Init", header: "StepGeom_DegeneratePcurve.hxx".}
proc setBasisSurface*(this: var StepGeomDegeneratePcurve;
                     aBasisSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_DegeneratePcurve.hxx".}
proc basisSurface*(this: StepGeomDegeneratePcurve): Handle[StepGeomSurface] {.
    noSideEffect, importcpp: "BasisSurface",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc setReferenceToCurve*(this: var StepGeomDegeneratePcurve; aReferenceToCurve: Handle[
    StepReprDefinitionalRepresentation]) {.importcpp: "SetReferenceToCurve",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc referenceToCurve*(this: StepGeomDegeneratePcurve): Handle[
    StepReprDefinitionalRepresentation] {.noSideEffect,
    importcpp: "ReferenceToCurve", header: "StepGeom_DegeneratePcurve.hxx".}
type
  StepGeomDegeneratePcurvebaseType* = StepGeomPoint

proc getTypeName*(): cstring {.importcpp: "StepGeom_DegeneratePcurve::get_type_name(@)",
                            header: "StepGeom_DegeneratePcurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_DegeneratePcurve::get_type_descriptor(@)",
    header: "StepGeom_DegeneratePcurve.hxx".}
proc dynamicType*(this: StepGeomDegeneratePcurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepGeom_DegeneratePcurve.hxx".}
