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

discard "forward decl of StepGeom_Direction"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepGeom_Vector"
discard "forward decl of StepGeom_Vector"
type
  HandleStepGeomVector* = Handle[StepGeomVector]
  StepGeomVector* {.importcpp: "StepGeom_Vector", header: "StepGeom_Vector.hxx",
                   bycopy.} = object of StepGeomGeometricRepresentationItem ## ! Returns a Vector


proc constructStepGeomVector*(): StepGeomVector {.constructor,
    importcpp: "StepGeom_Vector(@)", header: "StepGeom_Vector.hxx".}
proc init*(this: var StepGeomVector; aName: Handle[TCollectionHAsciiString];
          aOrientation: Handle[StepGeomDirection]; aMagnitude: float) {.
    importcpp: "Init", header: "StepGeom_Vector.hxx".}
proc setOrientation*(this: var StepGeomVector;
                    aOrientation: Handle[StepGeomDirection]) {.
    importcpp: "SetOrientation", header: "StepGeom_Vector.hxx".}
proc orientation*(this: StepGeomVector): Handle[StepGeomDirection] {.noSideEffect,
    importcpp: "Orientation", header: "StepGeom_Vector.hxx".}
proc setMagnitude*(this: var StepGeomVector; aMagnitude: float) {.
    importcpp: "SetMagnitude", header: "StepGeom_Vector.hxx".}
proc magnitude*(this: StepGeomVector): float {.noSideEffect, importcpp: "Magnitude",
    header: "StepGeom_Vector.hxx".}
type
  StepGeomVectorbaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepGeom_Vector::get_type_name(@)",
                            header: "StepGeom_Vector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepGeom_Vector::get_type_descriptor(@)",
    header: "StepGeom_Vector.hxx".}
proc dynamicType*(this: StepGeomVector): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepGeom_Vector.hxx".}
