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
discard "forward decl of StepGeom_Pcurve"
discard "forward decl of StepGeom_Pcurve"
type
  HandleC1C1* = Handle[StepGeomPcurve]
  StepGeomPcurve* {.importcpp: "StepGeom_Pcurve", header: "StepGeom_Pcurve.hxx",
                   bycopy.} = object of StepGeomCurve ## ! Returns a Pcurve


proc constructStepGeomPcurve*(): StepGeomPcurve {.constructor,
    importcpp: "StepGeom_Pcurve(@)", header: "StepGeom_Pcurve.hxx".}
proc init*(this: var StepGeomPcurve; aName: Handle[TCollectionHAsciiString];
          aBasisSurface: Handle[StepGeomSurface];
          aReferenceToCurve: Handle[StepReprDefinitionalRepresentation]) {.
    importcpp: "Init", header: "StepGeom_Pcurve.hxx".}
proc setBasisSurface*(this: var StepGeomPcurve;
                     aBasisSurface: Handle[StepGeomSurface]) {.
    importcpp: "SetBasisSurface", header: "StepGeom_Pcurve.hxx".}
proc basisSurface*(this: StepGeomPcurve): Handle[StepGeomSurface] {.noSideEffect,
    importcpp: "BasisSurface", header: "StepGeom_Pcurve.hxx".}
proc setReferenceToCurve*(this: var StepGeomPcurve; aReferenceToCurve: Handle[
    StepReprDefinitionalRepresentation]) {.importcpp: "SetReferenceToCurve",
    header: "StepGeom_Pcurve.hxx".}
proc referenceToCurve*(this: StepGeomPcurve): Handle[
    StepReprDefinitionalRepresentation] {.noSideEffect,
    importcpp: "ReferenceToCurve", header: "StepGeom_Pcurve.hxx".}
type
  StepGeomPcurvebaseType* = StepGeomCurve

proc getTypeName*(): cstring {.importcpp: "StepGeom_Pcurve::get_type_name(@)",
                            header: "StepGeom_Pcurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Pcurve::get_type_descriptor(@)",
    header: "StepGeom_Pcurve.hxx".}
proc dynamicType*(this: StepGeomPcurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Pcurve.hxx".}